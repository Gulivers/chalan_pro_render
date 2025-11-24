# ============================================
# Script de prueba para el flujo completo de creacion de tenant
# ============================================
# Uso: .\scripts\test-tenant-creation.ps1
# ============================================

$ErrorActionPreference = "Continue"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Prueba del Flujo Completo de Tenant" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# 1. Verificar que el backend este corriendo
Write-Host "[1/5] Verificando backend..." -ForegroundColor Yellow
try {
    $response = Invoke-WebRequest -Uri "http://localhost:8000/admin/" -UseBasicParsing -TimeoutSec 5
    if ($response.StatusCode -eq 200) {
        Write-Host "   Backend esta corriendo" -ForegroundColor Green
    }
} catch {
    Write-Host "   ERROR: Backend no esta accesible en http://localhost:8000" -ForegroundColor Red
    Write-Host "   Asegurate de que el contenedor chalan-backend este corriendo" -ForegroundColor Yellow
    exit 1
}

# 2. Verificar servicios compartidos
Write-Host "[2/5] Verificando servicios compartidos..." -ForegroundColor Yellow
& powershell -ExecutionPolicy Bypass -File scripts/ensure-shared-services.ps1 | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "   Servicios compartidos verificados" -ForegroundColor Green
} else {
    Write-Host "   Advertencia: Problemas al verificar servicios compartidos" -ForegroundColor Yellow
}

# 3. Preparar datos de prueba
Write-Host "[3/5] Preparando datos de prueba..." -ForegroundColor Yellow
$timestamp = Get-Date -Format "yyyyMMddHHmmss"
$testData = @{
    company_name = "Test Company $timestamp"
    email = "test$timestamp@example.com"
    client_type = "electric"
}

Write-Host "   Nombre: $($testData.company_name)" -ForegroundColor Cyan
Write-Host "   Email: $($testData.email)" -ForegroundColor Cyan
Write-Host "   Tipo: $($testData.client_type)" -ForegroundColor Cyan

# 4. Crear tenant via API
Write-Host "[4/5] Creando tenant via API..." -ForegroundColor Yellow
$apiUrl = "http://localhost:8000/api/onboarding/create-tenant/"

try {
    # Crear FormData (multipart/form-data) como espera el endpoint
    $boundary = [System.Guid]::NewGuid().ToString()
    $bodyLines = @()
    $bodyLines += "--$boundary"
    $bodyLines += "Content-Disposition: form-data; name=`"company_name`""
    $bodyLines += ""
    $bodyLines += $testData.company_name
    $bodyLines += "--$boundary"
    $bodyLines += "Content-Disposition: form-data; name=`"email`""
    $bodyLines += ""
    $bodyLines += $testData.email
    $bodyLines += "--$boundary"
    $bodyLines += "Content-Disposition: form-data; name=`"client_type`""
    $bodyLines += ""
    $bodyLines += $testData.client_type
    $bodyLines += "--$boundary--"
    
    $body = $bodyLines -join "`r`n"
    
    $headers = @{
        "Content-Type" = "multipart/form-data; boundary=$boundary"
    }
    
    $response = Invoke-RestMethod -Uri $apiUrl -Method Post -Body $body -Headers $headers -TimeoutSec 300
    
        if ($response.success) {
            Write-Host "   Tenant creado exitosamente!" -ForegroundColor Green
            Write-Host "   Schema: $($response.schema_name)" -ForegroundColor Cyan
            Write-Host "   Domain: $($response.domain)" -ForegroundColor Cyan
            Write-Host "   URL: $($response.url)" -ForegroundColor Cyan
            
            if ($response.docker_status.success) {
                Write-Host "   Contenedores Docker creados!" -ForegroundColor Green
            } else {
                Write-Host "   Advertencia: Problemas al crear contenedores Docker" -ForegroundColor Yellow
                Write-Host "   Error: $($response.docker_status.error)" -ForegroundColor Yellow
                
                # Mostrar comando manual si está disponible
                if ($response.manual_command) {
                    Write-Host ""
                    Write-Host "   COMANDO MANUAL:" -ForegroundColor Cyan
                    Write-Host "   $($response.manual_command)" -ForegroundColor White
                    Write-Host ""
                    Write-Host "   Instrucciones: $($response.instructions)" -ForegroundColor Yellow
                } elseif ($response.docker_status.manual_command) {
                    Write-Host ""
                    Write-Host "   COMANDO MANUAL:" -ForegroundColor Cyan
                    Write-Host "   $($response.docker_status.manual_command)" -ForegroundColor White
                    Write-Host ""
                    if ($response.docker_status.instructions) {
                        Write-Host "   Instrucciones: $($response.docker_status.instructions)" -ForegroundColor Yellow
                    }
                }
            }
    } else {
        Write-Host "   ERROR: $($response.error)" -ForegroundColor Red
        exit 1
    }
} catch {
    Write-Host "   ERROR al crear tenant:" -ForegroundColor Red
    Write-Host "   $($_.Exception.Message)" -ForegroundColor Red
    if ($_.ErrorDetails.Message) {
        Write-Host "   Detalles: $($_.ErrorDetails.Message)" -ForegroundColor Red
    }
    exit 1
}

# 5. Verificar contenedores creados
Write-Host "[5/5] Verificando contenedores Docker..." -ForegroundColor Yellow
$schemaName = $response.schema_name
$webContainer = "chalan-$schemaName-web"
$nginxContainer = "chalan-$schemaName-nginx"

$containers = docker ps -a --format "{{.Names}}" | Select-String -Pattern "^chalan-$schemaName-"

if ($containers) {
    Write-Host "   Contenedores encontrados:" -ForegroundColor Green
    $containers | ForEach-Object {
        $containerName = $_.ToString().Trim()
        $status = docker ps --format "{{.Status}}" --filter "name=$containerName"
        Write-Host "     - $containerName : $status" -ForegroundColor Cyan
    }
} else {
    Write-Host "   Advertencia: No se encontraron contenedores para el tenant" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Prueba completada!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan

