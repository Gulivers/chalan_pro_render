# ============================================
# Script PowerShell para crear contenedores Docker de un nuevo tenant
# ============================================
# Uso: .\scripts\create-tenant.ps1 <tenant_name> <schema_name> <domain> <tenant_id> [compose_file] [environment] [version]
# ============================================

param(
    [Parameter(Mandatory=$true)]
    [string]$TENANT_NAME,
    
    [Parameter(Mandatory=$true)]
    [string]$SCHEMA_NAME,
    
    [Parameter(Mandatory=$true)]
    [string]$DOMAIN,
    
    [Parameter(Mandatory=$true)]
    [string]$TENANT_ID,
    
    [string]$COMPOSE_FILE = "docker-compose.multitenant.yml",
    [string]$ENVIRONMENT = "local",
    [string]$VERSION = "2.0.0"
)

$ErrorActionPreference = "Stop"

Write-Host "Creando contenedores Docker para tenant: $TENANT_NAME" -ForegroundColor Cyan
Write-Host "   Schema: $SCHEMA_NAME" -ForegroundColor Cyan
Write-Host "   Domain: $DOMAIN" -ForegroundColor Cyan
Write-Host "   Tenant ID: $TENANT_ID" -ForegroundColor Cyan

# Generar nombres de contenedores
$WEB_CONTAINER = "chalan-$SCHEMA_NAME-web"
$NGINX_CONTAINER = "chalan-$SCHEMA_NAME-nginx"

# Obtener directorio del proyecto
$PROJECT_DIR = (Get-Location).Path

# Crear directorios necesarios
Write-Host "Creando directorios..." -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "$PROJECT_DIR\logs\$SCHEMA_NAME" | Out-Null
New-Item -ItemType Directory -Force -Path "$PROJECT_DIR\media\$SCHEMA_NAME" | Out-Null
New-Item -ItemType Directory -Force -Path "$PROJECT_DIR\media\tenant_logos" | Out-Null

# Generar API domain
$API_DOMAIN = "api.$DOMAIN"

# Verificar que la red Docker existe
$NETWORK_NAME = "chalan-nginx-proxy"
$networks = docker network ls --format "{{.Name}}"
$networkExists = $networks | Select-String -Pattern "^${NETWORK_NAME}$" -Quiet

if (-not $networkExists) {
    Write-Host "Creando red Docker: ${NETWORK_NAME}" -ForegroundColor Yellow
    $result = docker network create ${NETWORK_NAME} 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Red Docker creada" -ForegroundColor Green
    } else {
        # La red puede ya existir, no es un error crítico
        $resultStr = $result | Out-String
        if ($resultStr -match "already exists") {
            Write-Host "Red Docker ${NETWORK_NAME} ya existe" -ForegroundColor Green
        } else {
            Write-Host "Advertencia al crear red: $resultStr" -ForegroundColor Yellow
        }
    }
} else {
    Write-Host "Red Docker ${NETWORK_NAME} existe" -ForegroundColor Green
}

# Detectar nombres de servicios compartidos
$runningContainers = docker ps --format "{{.Names}}"
$DB_CONTAINER = $runningContainers | Select-String -Pattern "chalan.*db|chalan.*postgres" | Select-Object -First 1
$REDIS_CONTAINER = $runningContainers | Select-String -Pattern "chalan.*redis" | Select-Object -First 1

if (-not $DB_CONTAINER) {
    Write-Host "ERROR: El contenedor de base de datos no esta corriendo" -ForegroundColor Red
    exit 1
}

if (-not $REDIS_CONTAINER) {
    Write-Host "ERROR: El contenedor de Redis no esta corriendo" -ForegroundColor Red
    exit 1
}

Write-Host "   DB Container: $DB_CONTAINER" -ForegroundColor Cyan
Write-Host "   Redis Container: $REDIS_CONTAINER" -ForegroundColor Cyan

# Obtener variables de entorno del contenedor de DB
$dbEnv = docker inspect $DB_CONTAINER --format "{{range .Config.Env}}{{println .}}{{end}}"
$POSTGRES_USER = ($dbEnv | Select-String -Pattern "^POSTGRES_USER=" | ForEach-Object { $_.Line -replace "POSTGRES_USER=", "" }) | Select-Object -First 1
if (-not $POSTGRES_USER) { $POSTGRES_USER = "chalan_user" }

$POSTGRES_PASSWORD = ($dbEnv | Select-String -Pattern "^POSTGRES_PASSWORD=" | ForEach-Object { $_.Line -replace "POSTGRES_PASSWORD=", "" }) | Select-Object -First 1
if (-not $POSTGRES_PASSWORD) { $POSTGRES_PASSWORD = "chalan_password" }

$POSTGRES_DB = ($dbEnv | Select-String -Pattern "^POSTGRES_DB=" | ForEach-Object { $_.Line -replace "POSTGRES_DB=", "" }) | Select-Object -First 1
if (-not $POSTGRES_DB) { $POSTGRES_DB = "chalan_tenant_db" }

# Obtener SECRET_KEY del archivo .env
$DJANGO_SECRET_KEY = "temp-secret-key-change-in-production"
if (Test-Path ".env") {
    $envContent = Get-Content ".env"
    $secretKeyLine = $envContent | Select-String -Pattern "^DJANGO_SECRET_KEY="
    if ($secretKeyLine) {
        $DJANGO_SECRET_KEY = ($secretKeyLine.Line -replace "DJANGO_SECRET_KEY=", "").Trim()
    }
}

# Verificar si los contenedores ya existen y detenerlos
$existingContainers = docker ps -a --format "{{.Names}}"
if ($existingContainers -match "^${WEB_CONTAINER}$") {
    Write-Host "Deteniendo y eliminando contenedor existente: ${WEB_CONTAINER}" -ForegroundColor Yellow
    docker stop $WEB_CONTAINER 2>&1 | Out-Null
    docker rm $WEB_CONTAINER 2>&1 | Out-Null
}

if ($existingContainers -match "^${NGINX_CONTAINER}$") {
    Write-Host "Deteniendo y eliminando contenedor existente: ${NGINX_CONTAINER}" -ForegroundColor Yellow
    docker stop $NGINX_CONTAINER 2>&1 | Out-Null
    docker rm $NGINX_CONTAINER 2>&1 | Out-Null
}

# Verificar si la imagen existe
$images = docker images --format "{{.Repository}}:{{.Tag}}"
if ($images -notmatch "chalanpro:${VERSION}") {
    Write-Host "Construyendo imagen chalanpro:${VERSION}..." -ForegroundColor Yellow
    docker build -t chalanpro:${VERSION} -f Dockerfile .
    if ($LASTEXITCODE -ne 0) {
        Write-Host "ERROR: No se pudo construir la imagen" -ForegroundColor Red
        exit 1
    }
}

# Verificar que el archivo nginx.conf existe
$nginxConfPath = "$PROJECT_DIR\vuefrontend\nginx.conf"
if (-not (Test-Path $nginxConfPath)) {
    Write-Host "Creando nginx.conf basico..." -ForegroundColor Yellow
    New-Item -ItemType Directory -Force -Path "$PROJECT_DIR\vuefrontend" | Out-Null
    $nginxConfig = @"
server {
    listen 80;
    server_name _;
    root /usr/share/nginx/html;
    index index.html;

    location / {
        try_files `$uri `$uri/ /index.html;
    }

    location /api {
        proxy_pass http://chalan-backend:8000;
        proxy_set_header Host `$host;
        proxy_set_header X-Real-IP `$remote_addr;
        proxy_set_header X-Forwarded-For `$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto `$scheme;
    }
}
"@
    Set-Content -Path $nginxConfPath -Value $nginxConfig
}

# Crear contenedor web
Write-Host "Creando contenedor web: ${WEB_CONTAINER}..." -ForegroundColor Yellow

$envFileArg = ""
if (Test-Path ".env") {
    $envFileArg = "--env-file .env"
}

$dockerRunCmd = @"
docker run -d --name ${WEB_CONTAINER} --network ${NETWORK_NAME} ${envFileArg} -e DJANGO_SETTINGS_MODULE=project.settings.${ENVIRONMENT} -e VIRTUAL_HOST=${API_DOMAIN} -e LETSENCRYPT_HOST=${API_DOMAIN} -e TENANT_SCHEMA=${SCHEMA_NAME} -e TENANT_ID=${TENANT_ID} -e DATABASE_URL=postgresql://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${DB_CONTAINER}:5432/${POSTGRES_DB} -e POSTGRES_HOST=${DB_CONTAINER} -e REDIS_URL=redis://${REDIS_CONTAINER}:6379/0 -e DJANGO_SECRET_KEY=${DJANGO_SECRET_KEY} -e DEBUG=True -v "${PROJECT_DIR}:/app" -v "${PROJECT_DIR}/logs/${SCHEMA_NAME}:/app/logs" -v "${PROJECT_DIR}/media/${SCHEMA_NAME}:/app/media/${SCHEMA_NAME}" --restart unless-stopped chalanpro:${VERSION} sh -c "python manage.py migrate_schemas --schema=${SCHEMA_NAME} && python manage.py runserver 0.0.0.0:8000"
"@

Invoke-Expression $dockerRunCmd | Out-Null

if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: No se pudo crear el contenedor web" -ForegroundColor Red
    exit 1
}

# Esperar a que el contenedor web inicie
Write-Host "Esperando a que el contenedor web inicie..." -ForegroundColor Yellow
Start-Sleep -Seconds 5

# Conectar el contenedor a la red de PostgreSQL si es necesario
# Buscar la red donde está PostgreSQL
$postgresNetworks = docker inspect $DB_CONTAINER --format "{{range .NetworkSettings.Networks}}{{.NetworkID}} {{end}}"
$postgresNetworkNames = docker network ls --format "{{.ID}} {{.Name}}"
$chalanNetworkName = $null
foreach ($line in $postgresNetworkNames) {
    $parts = $line -split " ", 2
    if ($postgresNetworks -match $parts[0]) {
        $chalanNetworkName = $parts[1]
        break
    }
}

if ($chalanNetworkName -and $chalanNetworkName -ne $NETWORK_NAME) {
    Write-Host "Conectando contenedor web a la red de PostgreSQL: ${chalanNetworkName}..." -ForegroundColor Yellow
    docker network connect ${chalanNetworkName} ${WEB_CONTAINER} 2>&1 | Out-Null
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Contenedor conectado a ${chalanNetworkName}" -ForegroundColor Green
    }
}

# Verificar que el contenedor web esta corriendo
$runningContainers = docker ps --format "{{.Names}}"
if ($runningContainers -notmatch "^${WEB_CONTAINER}$") {
    Write-Host "ERROR: El contenedor web no esta corriendo" -ForegroundColor Red
    Write-Host "   Revisa los logs: docker logs ${WEB_CONTAINER}" -ForegroundColor Yellow
    exit 1
}

# Crear contenedor nginx
Write-Host "Creando contenedor nginx: ${NGINX_CONTAINER}..." -ForegroundColor Yellow

$nginxRunCmd = @"
docker run -d --name ${NGINX_CONTAINER} --network ${NETWORK_NAME} -e VIRTUAL_HOST=${DOMAIN},www.${DOMAIN} -e LETSENCRYPT_HOST=${DOMAIN},www.${DOMAIN} -e TENANT_SCHEMA=${SCHEMA_NAME} -v "${PROJECT_DIR}/vuefrontend/dist:/usr/share/nginx/html:ro" -v "${PROJECT_DIR}/vuefrontend/nginx.conf:/etc/nginx/conf.d/default.conf:ro" --restart unless-stopped nginx:1.19.0-alpine
"@

Invoke-Expression $nginxRunCmd | Out-Null

if ($LASTEXITCODE -ne 0) {
    Write-Host "ERROR: No se pudo crear el contenedor nginx" -ForegroundColor Red
    docker stop $WEB_CONTAINER 2>&1 | Out-Null
    docker rm $WEB_CONTAINER 2>&1 | Out-Null
    exit 1
}

Write-Host ""
Write-Host "Contenedores Docker creados exitosamente!" -ForegroundColor Green
Write-Host ""
Write-Host "Servicios creados:" -ForegroundColor Cyan
Write-Host "   - ${WEB_CONTAINER}" -ForegroundColor Cyan
Write-Host "   - ${NGINX_CONTAINER}" -ForegroundColor Cyan
Write-Host ""
Write-Host "URLs:" -ForegroundColor Cyan
Write-Host "   - Frontend: http://${DOMAIN}" -ForegroundColor Cyan
Write-Host "   - API: http://${API_DOMAIN}" -ForegroundColor Cyan

