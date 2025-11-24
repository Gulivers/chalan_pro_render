# ============================================
# Script PowerShell para asegurar que los servicios compartidos esten corriendo
# ============================================
# Uso: .\scripts\ensure-shared-services.ps1
# ============================================

$ErrorActionPreference = "Continue"

$COMPOSE_FILE = "docker-compose.multitenant.yml"

Write-Host "Verificando servicios compartidos..." -ForegroundColor Cyan

# Verificar que docker-compose.multitenant.yml existe
if (-not (Test-Path $COMPOSE_FILE)) {
    Write-Host "Advertencia: $COMPOSE_FILE no encontrado" -ForegroundColor Yellow
    Write-Host "   Usando docker-compose.local.yml en su lugar..." -ForegroundColor Yellow
    $COMPOSE_FILE = "docker-compose.local.yml"
}

# Verificar que la red Docker existe
$NETWORK_NAME = "chalan-nginx-proxy"
$networks = docker network ls --format "{{.Name}}"
$networkExists = $networks -match "^${NETWORK_NAME}$"

if (-not $networkExists) {
    Write-Host "Creando red Docker: ${NETWORK_NAME}" -ForegroundColor Yellow
    $result = docker network create ${NETWORK_NAME} 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Red Docker creada" -ForegroundColor Green
    } else {
        Write-Host "Red ya existe o error al crear" -ForegroundColor Yellow
    }
} else {
    Write-Host "Red Docker ${NETWORK_NAME} existe" -ForegroundColor Green
}

# Verificar servicios compartidos
$runningContainers = docker ps --format "{{.Names}}"

# Detectar nombres de contenedores (pueden variar)
$DB_CONTAINER = $runningContainers | Select-String -Pattern "chalan.*db|chalan.*postgres" | Select-Object -First 1
$REDIS_CONTAINER = $runningContainers | Select-String -Pattern "chalan.*redis" | Select-Object -First 1
$NGINX_PROXY_CONTAINER = $runningContainers | Select-String -Pattern "chalan.*nginx-proxy" | Select-Object -First 1

# Verificar DB
if (-not $DB_CONTAINER) {
    Write-Host "Iniciando PostgreSQL..." -ForegroundColor Yellow
    docker-compose -f ${COMPOSE_FILE} up -d postgres 2>&1 | Out-Null
    Write-Host "Esperando a que PostgreSQL este listo..." -ForegroundColor Yellow
    Start-Sleep -Seconds 5
    $runningContainers = docker ps --format "{{.Names}}"
    $DB_CONTAINER = $runningContainers | Select-String -Pattern "chalan.*db|chalan.*postgres" | Select-Object -First 1
}

if ($DB_CONTAINER) {
    Write-Host "PostgreSQL esta corriendo: $DB_CONTAINER" -ForegroundColor Green
} else {
    Write-Host "PostgreSQL no esta corriendo" -ForegroundColor Yellow
}

# Verificar Redis
if (-not $REDIS_CONTAINER) {
    Write-Host "Iniciando Redis..." -ForegroundColor Yellow
    docker-compose -f ${COMPOSE_FILE} up -d redis 2>&1 | Out-Null
    $runningContainers = docker ps --format "{{.Names}}"
    $REDIS_CONTAINER = $runningContainers | Select-String -Pattern "chalan.*redis" | Select-Object -First 1
}

if ($REDIS_CONTAINER) {
    Write-Host "Redis esta corriendo: $REDIS_CONTAINER" -ForegroundColor Green
} else {
    Write-Host "Redis no esta corriendo" -ForegroundColor Yellow
}

# Verificar nginx-proxy (opcional para desarrollo local)
if (-not $NGINX_PROXY_CONTAINER) {
    Write-Host "nginx-proxy no esta corriendo (opcional para desarrollo local)" -ForegroundColor Yellow
    Write-Host "   Para produccion multi-tenant, ejecuta:" -ForegroundColor Yellow
    Write-Host "   docker-compose -f docker-compose.multitenant.yml up -d nginx-proxy" -ForegroundColor Yellow
} else {
    Write-Host "nginx-proxy esta corriendo: $NGINX_PROXY_CONTAINER" -ForegroundColor Green
}

Write-Host ""
Write-Host "Verificacion completada" -ForegroundColor Green
Write-Host ""
Write-Host "Estado de servicios:" -ForegroundColor Cyan
docker ps --format "table {{.Names}}`t{{.Status}}`t{{.Ports}}" | Select-String -Pattern "chalan|NAMES"
