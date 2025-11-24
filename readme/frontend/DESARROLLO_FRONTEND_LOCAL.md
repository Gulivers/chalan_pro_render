# 🚀 Desarrollo Frontend Local (Sin Docker)

Esta guía explica cómo ejecutar el frontend Vue.js directamente en tu máquina local para un desarrollo más rápido con hot-reload mejorado.

## ✅ Ventajas de Desarrollo Local

- ⚡ **Hot-reload más rápido**: Los cambios se reflejan instantáneamente
- 🔄 **Sin reinicios**: No necesitas reiniciar contenedores
- 🐛 **Debugging más fácil**: Mejor integración con DevTools del navegador
- 📦 **Menos recursos**: No consume recursos del contenedor Docker

## 📋 Requisitos Previos

1. **Node.js instalado** (versión 18 o superior)
   ```powershell
   node --version
   ```

2. **Backend corriendo** (Docker o local)
   - El backend debe estar accesible en `http://192.168.0.248:8000`
   - Si usas Docker: `docker-compose -f docker-compose.local.yml up -d backend postgres redis`

## 🛠️ Pasos para Desarrollo Local

### 1. Detener el Contenedor del Frontend

```powershell
# Detener solo el contenedor del frontend
docker stop chalan-frontend

# O si prefieres detenerlo desde docker-compose
docker-compose -f docker-compose.local.yml stop frontend
```

### 2. Navegar al Directorio del Frontend

```powershell
cd D:\MisDesarrollos\Driver_ChalanProyect\chalan_inv_txn\vuefrontend
```

### 3. Instalar Dependencias (Solo la Primera Vez)

```powershell
npm install
```

> **Nota**: Si ya tienes `node_modules` instalado, puedes saltar este paso.

### 4. Ejecutar el Servidor de Desarrollo

```powershell
# Opción 1: Usar npm run server (recomendado)
npm run server

# Opción 2: Usar npm run serve (equivalente)
npm run serve

# Opción 3: Usar npm run dev (equivalente)
npm run dev
```

Todos los comandos son equivalentes y ejecutan `vue-cli-service serve`.

### 5. Acceder a la Aplicación

Una vez iniciado, verás un mensaje como:

```
App running at:
  - Local:   http://localhost:3000/
  - Network: http://192.168.0.248:3000/
```

Accede desde tu navegador:
- **Local**: `http://localhost:3000`
- **Red local**: `http://192.168.0.248:3000`

## 🔧 Configuración del Proxy

El archivo `vue.config.js` está configurado para hacer proxy de las peticiones `/api/*` al backend:

```javascript
proxy: {
  '/api': {
    target: 'http://192.168.0.248:8000', // Backend Django
    changeOrigin: true,
    secure: false,
  },
}
```

Esto significa que:
- Las peticiones a `http://localhost:3000/api/login/` se redirigen a `http://192.168.0.248:8000/api/login/`
- No necesitas configurar CORS adicionalmente

## 🔄 Hot-Reload

El hot-reload funciona automáticamente:

1. **Guarda un archivo** `.vue`, `.js`, `.css`, etc.
2. **El servidor detecta el cambio** automáticamente
3. **El navegador se recarga** (o actualiza el componente específico)

### Si el Hot-Reload No Funciona

1. **Refresca manualmente** el navegador (F5 o Ctrl+R)
2. **Revisa la consola** del navegador (F12) por errores
3. **Revisa la terminal** donde corre `npm run server` por errores de compilación

## 🛑 Detener el Servidor

Presiona `Ctrl + C` en la terminal donde está corriendo `npm run server`.

## 🔄 Volver a Usar Docker

Si quieres volver a usar el contenedor Docker:

```powershell
# Desde el directorio raíz del proyecto
docker-compose -f docker-compose.local.yml up -d frontend
```

## 📝 Notas Importantes

### Puerto en Uso

Si el puerto 3000 está ocupado, puedes cambiarlo:

```powershell
# Opción 1: Cambiar en vue.config.js
# port: 3001

# Opción 2: Usar variable de entorno
$env:PORT=3001; npm run server
```

### Dependencias Nuevas

Si agregas nuevas dependencias en `package.json`:

```powershell
npm install
```

### Variables de Entorno

El frontend detecta automáticamente el entorno y configura las URLs del API:
- **Desarrollo local**: `http://192.168.0.248:8000`
- **Producción**: Se detecta automáticamente según el hostname

Puedes sobrescribir con variables de entorno:
```powershell
# Crear archivo .env en vuefrontend/
VUE_APP_API_BASE_URL=http://192.168.0.248:8000
VUE_APP_WS_BASE_URL=ws://192.168.0.248:8000
```

## 🐛 Troubleshooting

### Error: "Port 3000 is already in use"

```powershell
# Opción 1: Detener el proceso que usa el puerto
netstat -ano | findstr :3000
taskkill /PID <PID> /F

# Opción 2: Usar otro puerto
# Edita vue.config.js y cambia port: 3001
```

### Error: "Cannot find module"

```powershell
# Reinstalar dependencias
rm -r node_modules
npm install
```

### El Backend No Responde

1. Verifica que el backend esté corriendo:
   ```powershell
   docker ps | Select-String "chalan-backend"
   ```

2. Verifica que el backend responda:
   ```powershell
   curl http://192.168.0.248:8000/api/
   ```

3. Revisa los logs del backend:
   ```powershell
   docker logs chalan-backend --tail 50
   ```

## ✅ Checklist de Desarrollo Local

- [ ] Backend corriendo en puerto 8000
- [ ] Contenedor `chalan-frontend` detenido
- [ ] Dependencias instaladas (`npm install`)
- [ ] Servidor ejecutándose (`npm run server`)
- [ ] Acceso a `http://192.168.0.248:3000`
- [ ] Hot-reload funcionando

## 🎯 Comandos Rápidos

```powershell
# Iniciar desarrollo local
cd vuefrontend
npm run server

# Detener desarrollo
Ctrl + C

# Reinstalar dependencias
npm install

# Verificar puerto
netstat -ano | findstr :3000
```

---

**Última actualización**: 2025-01-XX
