"""
Views para appcore - Multi-tenant Onboarding
"""
import os
import subprocess
import logging
import re
from pathlib import Path
from django.conf import settings
from django.db import transaction
from django.utils.text import slugify
from django_tenants.utils import schema_context
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.permissions import AllowAny
from rest_framework.decorators import permission_classes
from .models import Tenant, Domain
from .serializers import (
    TenantOnboardingSerializer,
    TenantCreateResponseSerializer
)

logger = logging.getLogger(__name__)


@permission_classes([AllowAny])
class CreateTenantView(APIView):
    """
    API View para crear un nuevo tenant automáticamente
    Endpoint: POST /api/onboarding/create-tenant/
    """
    
    def post(self, request):
        """
        Crea un nuevo tenant con schema, dominio y contenedores Docker
        """
        serializer = TenantOnboardingSerializer(data=request.data)
        
        if not serializer.is_valid():
            return Response(
                {
                    'success': False,
                    'error': 'Datos inválidos',
                    'details': serializer.errors
                },
                status=status.HTTP_400_BAD_REQUEST
            )
        
        company_name = serializer.validated_data['company_name']
        email = serializer.validated_data['email']
        client_type = serializer.validated_data['client_type']
        logo_file = serializer.validated_data.get('logo')
        
        try:
            # Generar nombres únicos
            schema_name = self._generate_schema_name(company_name)
            tenant_id = self._generate_tenant_id(company_name)
            domain = self._generate_domain(company_name)
            
            # Verificar que no exista
            if Tenant.objects.filter(schema_name=schema_name).exists():
                return Response(
                    {
                        'success': False,
                        'error': f'Ya existe un tenant con el schema "{schema_name}"'
                    },
                    status=status.HTTP_400_BAD_REQUEST
                )
            
            # Crear tenant en base de datos
            with transaction.atomic():
                tenant = Tenant.objects.create(
                    name=company_name,
                    schema_name=schema_name,
                    tenant_id=tenant_id,
                    email=email,
                    client_type=client_type,
                    on_trial=True,
                    is_active=True
                )
                
                # Guardar logo si se proporcionó
                if logo_file:
                    logo_path = f'tenant_logos/{schema_name}_logo.png'
                    tenant.logo.save(logo_path, logo_file, save=True)
                
                # Crear dominio
                domain_obj = Domain.objects.create(
                    tenant=tenant,
                    domain=domain,
                    is_primary=True
                )
            
            # Asegurar que los servicios compartidos estén corriendo
            self._ensure_shared_services()
            
            # Crear directorios para logs y media
            self._create_tenant_directories(schema_name)
            
            # Crear schema en PostgreSQL
            self._create_postgres_schema(schema_name)
            
            # Ejecutar migraciones para el nuevo schema
            self._run_migrations(schema_name)
            
            # Precargar datos según client_type
            self._preload_tenant_data(schema_name, client_type)
            
            # Crear contenedores Docker (web y nginx)
            docker_result = self._create_docker_containers(
                schema_name=schema_name,
                tenant_name=company_name,
                domain=domain,
                tenant_id=tenant_id
            )
            
            # Construir URL de respuesta
            protocol = 'https' if not settings.DEBUG else 'http'
            tenant_url = f"{protocol}://{domain}"
            
            response_data = {
                'success': True,
                'message': f'Tenant "{company_name}" creado exitosamente',
                'tenant_id': tenant.id,
                'schema_name': schema_name,
                'domain': domain,
                'url': tenant_url,
                'docker_status': docker_result
            }
            
            # Si los contenedores Docker no se crearon automáticamente, incluir el comando manual
            if not docker_result.get('success', False):
                logger.warning(f"Contenedores Docker no creados automáticamente: {docker_result.get('error', 'Unknown error')}")
                # Incluir el comando manual en la respuesta si está disponible
                if 'manual_command' in docker_result:
                    response_data['manual_command'] = docker_result['manual_command']
                    response_data['instructions'] = docker_result.get('instructions', 'Ejecuta el comando manualmente desde el host')
                    response_data['docker_note'] = 'Los contenedores Docker deben crearse manualmente. Ver "manual_command" para el comando.'
            
            logger.info(f"Tenant creado exitosamente: {schema_name} - {domain}")
            
            return Response(response_data, status=status.HTTP_201_CREATED)
            
        except Exception as e:
            logger.error(f"Error al crear tenant: {str(e)}", exc_info=True)
            return Response(
                {
                    'success': False,
                    'error': f'Error al crear tenant: {str(e)}'
                },
                status=status.HTTP_500_INTERNAL_SERVER_ERROR
            )
    
    def _generate_schema_name(self, company_name):
        """Genera un nombre de schema único basado en el nombre de la compañía"""
        base_name = slugify(company_name).replace('-', '_')[:50]
        schema_name = f"tenant_{base_name}"
        
        # Verificar unicidad y agregar número si es necesario
        counter = 1
        original_schema = schema_name
        while Tenant.objects.filter(schema_name=schema_name).exists():
            schema_name = f"{original_schema}_{counter}"
            counter += 1
        
        return schema_name
    
    def _generate_tenant_id(self, company_name):
        """Genera un tenant_id único"""
        base_id = slugify(company_name).replace('-', '_')[:30]
        tenant_id = f"{base_id}_001"
        
        counter = 1
        original_id = tenant_id
        while Tenant.objects.filter(tenant_id=tenant_id).exists():
            tenant_id = f"{original_id.rsplit('_', 1)[0]}_{counter:03d}"
            counter += 1
        
        return tenant_id
    
    def _generate_domain(self, company_name):
        """Genera un dominio único basado en el nombre de la compañía"""
        base_domain = slugify(company_name).replace('_', '-')[:50]
        
        # En desarrollo, usar .localhost
        if settings.DEBUG:
            domain = f"{base_domain}.localhost"
        else:
            # En producción, usar dominio real (ajustar según tu configuración)
            domain = f"{base_domain}.chalanpro.com"
        
        # Verificar unicidad
        counter = 1
        original_domain = domain
        while Domain.objects.filter(domain=domain).exists():
            domain = f"{original_domain.rsplit('.', 1)[0]}-{counter}.{original_domain.rsplit('.', 1)[1]}"
            counter += 1
        
        return domain
    
    def _ensure_shared_services(self):
        """
        Asegura que los servicios compartidos (db, redis, nginx-proxy) estén corriendo
        """
        try:
            import platform
            import shutil
            
            script_path = None
            command = None
            
            if platform.system() == 'Windows':
                # En Windows, intentar usar PowerShell primero
                ps_script = Path(settings.BASE_DIR) / 'scripts' / 'ensure-shared-services.ps1'
                if ps_script.exists():
                    script_path = ps_script
                    command = [
                        'powershell.exe',
                        '-ExecutionPolicy', 'Bypass',
                        '-File', str(script_path)
                    ]
                else:
                    # Fallback a bash si PowerShell no está disponible
                    bash_script = Path(settings.BASE_DIR) / 'scripts' / 'ensure-shared-services.sh'
                    if bash_script.exists():
                        bash_path = self._find_bash_path()
                        if bash_path:
                            script_path = bash_script
                            import stat
                            script_path.chmod(script_path.stat().st_mode | stat.S_IEXEC)
                            command = [bash_path, str(script_path)]
            else:
                # Linux/Mac: usar bash
                bash_script = Path(settings.BASE_DIR) / 'scripts' / 'ensure-shared-services.sh'
                if bash_script.exists():
                    bash_path = shutil.which('bash') or '/bin/bash'
                    script_path = bash_script
                    import stat
                    script_path.chmod(script_path.stat().st_mode | stat.S_IEXEC)
                    command = [bash_path, str(script_path)]
            
            if command and script_path:
                logger.info(f"Ejecutando script de servicios compartidos: {script_path}")
                result = subprocess.run(
                    command,
                    capture_output=True,
                    text=True,
                    timeout=60,
                    cwd=str(settings.BASE_DIR)
                )
                
                if result.returncode != 0:
                    logger.warning(f"Error al verificar servicios compartidos: {result.stderr}")
                    logger.debug(f"Salida: {result.stdout}")
                else:
                    logger.info("Servicios compartidos verificados")
                    logger.debug(f"Salida: {result.stdout}")
            else:
                logger.warning("No se encontró script para verificar servicios compartidos")
        except Exception as e:
            logger.warning(f"No se pudieron verificar servicios compartidos: {str(e)}")
            # No fallar el proceso completo
    
    def _create_tenant_directories(self, schema_name):
        """Crea directorios necesarios para el tenant"""
        base_dir = Path(settings.BASE_DIR)
        
        directories = [
            base_dir / 'logs' / schema_name,
            base_dir / 'media' / schema_name,
            base_dir / 'media' / 'tenant_logos',
        ]
        
        for directory in directories:
            directory.mkdir(parents=True, exist_ok=True)
            logger.info(f"Directorio creado: {directory}")
    
    def _create_postgres_schema(self, schema_name):
        """Crea el schema en PostgreSQL"""
        try:
            from django.db import connection
            
            with connection.cursor() as cursor:
                cursor.execute(f"""
                    CREATE SCHEMA IF NOT EXISTS {schema_name};
                    GRANT ALL ON SCHEMA {schema_name} TO {settings.DATABASES['default']['USER']};
                    GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA {schema_name} TO {settings.DATABASES['default']['USER']};
                    GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA {schema_name} TO {settings.DATABASES['default']['USER']};
                    ALTER DEFAULT PRIVILEGES IN SCHEMA {schema_name} GRANT ALL ON TABLES TO {settings.DATABASES['default']['USER']};
                    ALTER DEFAULT PRIVILEGES IN SCHEMA {schema_name} GRANT ALL ON SEQUENCES TO {settings.DATABASES['default']['USER']};
                """)
            
            logger.info(f"Schema PostgreSQL creado: {schema_name}")
        except Exception as e:
            logger.error(f"Error al crear schema PostgreSQL: {str(e)}")
            raise
    
    def _run_migrations(self, schema_name):
        """Ejecuta migraciones para el nuevo schema"""
        try:
            from django.core.management import call_command
            
            # Ejecutar migraciones en el schema del tenant
            call_command('migrate_schemas', schema=schema_name, verbosity=0)
            logger.info(f"Migraciones ejecutadas para schema: {schema_name}")
        except Exception as e:
            logger.error(f"Error al ejecutar migraciones: {str(e)}")
            raise
    
    def _preload_tenant_data(self, schema_name, client_type):
        """Precarga datos iniciales según el tipo de cliente"""
        try:
            from django.core.management import call_command
            
            # Ejecutar management command para precargar datos
            call_command(
                'preload_tenant_data',
                schema=schema_name,
                client_type=client_type,
                verbosity=0
            )
            logger.info(f"Datos precargados para {schema_name} (tipo: {client_type})")
        except Exception as e:
            # No fallar si el comando no existe aún
            logger.warning(f"No se pudieron precargar datos: {str(e)}")
    
    def _create_docker_containers(self, schema_name, tenant_name, domain, tenant_id):
        """
        Crea contenedores Docker para el nuevo tenant
        Intenta usar docker-py si el socket está disponible, sino devuelve comando manual
        """
        try:
            # Intentar usar docker-py si el socket está disponible
            docker_socket_available = self._check_docker_socket()
            
            if docker_socket_available:
                logger.info("Socket de Docker disponible. Creando contenedores usando docker-py...")
                return self._create_containers_with_docker_py(schema_name, tenant_name, domain, tenant_id)
            else:
                logger.warning("Socket de Docker no disponible. Devolviendo comando manual...")
                return self._get_manual_command(schema_name, tenant_name, domain, tenant_id)
                
        except Exception as e:
            logger.error(f"Error al crear contenedores Docker: {str(e)}", exc_info=True)
            # Fallback a comando manual en caso de error
            return self._get_manual_command(schema_name, tenant_name, domain, tenant_id)
    
    def _check_docker_socket(self):
        """Verifica si el socket de Docker está disponible"""
        try:
            import docker
            client = docker.from_env()
            client.ping()
            return True
        except Exception as e:
            logger.debug(f"Socket de Docker no disponible: {str(e)}")
            return False
    
    def _get_manual_command(self, schema_name, tenant_name, domain, tenant_id):
        """Genera el comando manual para crear contenedores"""
        try:
            import platform
            
            is_docker = os.path.exists('/.dockerenv') or os.path.exists('/proc/self/cgroup')
            
            if is_docker:
                # Detectar si el host es Windows basándose en variables de entorno o asumir Windows por defecto
                host_os = os.environ.get('HOST_OS', 'Windows')
                use_powershell_env = os.environ.get('USE_POWERSHELL', 'true').lower() == 'true'
                use_powershell = host_os == 'Windows' or use_powershell_env
                
                if use_powershell:
                    ps_script = Path(settings.BASE_DIR) / 'scripts' / 'create-tenant.ps1'
                    if ps_script.exists():
                        script_rel_path = f"scripts\\create-tenant.ps1"
                        manual_command = (
                            f"powershell.exe -ExecutionPolicy Bypass -File "
                            f"{script_rel_path} "
                            f"\"{tenant_name}\" \"{schema_name}\" \"{domain}\" \"{tenant_id}\" "
                            f"docker-compose.multitenant.yml local 2.0.0"
                        )
                    else:
                        manual_command = f"# Script PowerShell no encontrado"
                else:
                    bash_script = Path(settings.BASE_DIR) / 'scripts' / 'create-tenant.sh'
                    if bash_script.exists():
                        script_rel_path = f"scripts/create-tenant.sh"
                        manual_command = (
                            f"bash {script_rel_path} "
                            f"\"{tenant_name}\" \"{schema_name}\" \"{domain}\" \"{tenant_id}\" "
                            f"docker-compose.multitenant.yml local 2.0.0"
                        )
                    else:
                        manual_command = f"# Script bash no encontrado"
            else:
                # Fuera de Docker
                use_powershell = platform.system() == 'Windows'
                if use_powershell:
                    ps_script = Path(settings.BASE_DIR) / 'scripts' / 'create-tenant.ps1'
                    if ps_script.exists():
                        script_rel_path = f"scripts\\create-tenant.ps1"
                        manual_command = (
                            f"powershell.exe -ExecutionPolicy Bypass -File "
                            f"{script_rel_path} "
                            f"\"{tenant_name}\" \"{schema_name}\" \"{domain}\" \"{tenant_id}\" "
                            f"docker-compose.multitenant.yml local 2.0.0"
                        )
                    else:
                        manual_command = f"# Script PowerShell no encontrado"
                else:
                    bash_script = Path(settings.BASE_DIR) / 'scripts' / 'create-tenant.sh'
                    if bash_script.exists():
                        script_rel_path = f"scripts/create-tenant.sh"
                        manual_command = (
                            f"bash {script_rel_path} "
                            f"\"{tenant_name}\" \"{schema_name}\" \"{domain}\" \"{tenant_id}\" "
                            f"docker-compose.multitenant.yml local 2.0.0"
                        )
                    else:
                        manual_command = f"# Script bash no encontrado"
            
            return {
                'success': False,
                'error': 'Socket de Docker no disponible. Los contenedores deben crearse manualmente desde el host.',
                'manual_command': manual_command,
                'instructions': 'Ejecuta el siguiente comando desde el terminal del host (PowerShell en Windows, bash en Linux/Mac) en el directorio del proyecto:',
                'command': manual_command,
                'schema_name': schema_name,
                'domain': domain,
                'tenant_id': tenant_id,
                'tenant_name': tenant_name
            }
        except Exception as e:
            logger.error(f"Error al generar comando manual: {str(e)}")
            return {
                'success': False,
                'error': f'Error al generar comando manual: {str(e)}'
            }
    
    def _create_containers_with_docker_py(self, schema_name, tenant_name, domain, tenant_id):
        """
        Crea contenedores Docker usando docker-py directamente
        """
        try:
            import docker
            from docker.errors import APIError, ImageNotFound
            
            client = docker.from_env()
            
            # Verificar que el cliente funciona
            client.ping()
            
            logger.info(f"Creando contenedores Docker usando docker-py para tenant: {schema_name}")
            
            # Nombres de contenedores
            web_container_name = f"chalan-{schema_name}-web"
            nginx_container_name = f"chalan-{schema_name}-nginx"
            
            # Redes
            network_name = "chalan-nginx-proxy"
            
            # Obtener información de servicios compartidos
            db_container = self._find_container_by_pattern(client, ["chalan.*db", "chalan.*postgres"])
            redis_container = self._find_container_by_pattern(client, ["chalan.*redis"])
            
            if not db_container:
                raise Exception("No se encontró contenedor de PostgreSQL")
            if not redis_container:
                raise Exception("No se encontró contenedor de Redis")
            
            # Obtener variables de entorno del contenedor DB
            db_env = {env.split('=')[0]: env.split('=', 1)[1] for env in db_container.attrs['Config']['Env'] if '=' in env}
            postgres_user = db_env.get('POSTGRES_USER', 'chalan_user')
            postgres_password = db_env.get('POSTGRES_PASSWORD', 'chalan_password')
            postgres_db = db_env.get('POSTGRES_DB', 'chalan_tenant_db')
            
            # Obtener SECRET_KEY del entorno o .env
            django_secret_key = os.environ.get('DJANGO_SECRET_KEY', 'dev-secret')
            
            # Obtener rutas del proyecto
            # Cuando Django está en Docker y crea otro contenedor, necesitamos la ruta del host
            # que está montada en /app. Podemos obtenerla inspeccionando el contenedor actual
            # o usando una variable de entorno, o simplemente usar la ruta relativa al proyecto
            if os.path.exists('/.dockerenv') or os.path.exists('/proc/self/cgroup'):
                # Estamos dentro de Docker, necesitamos obtener la ruta del host montada
                # Intentar obtenerla desde el contenedor actual usando docker inspect
                try:
                    import docker
                    current_container = client.containers.get('chalan-backend')
                    mounts = current_container.attrs['Mounts']
                    for mount in mounts:
                        if mount.get('Destination') == '/app':
                            project_dir = mount.get('Source')
                            break
                    else:
                        # Si no encontramos el mount, usar la ruta del host desde donde se ejecutó docker-compose
                        # En Windows, esto puede ser una ruta como D:\MisDesarrollos\...
                        # Necesitamos convertirla a formato Docker
                        project_dir = str(Path(settings.BASE_DIR).resolve())
                        # Convertir ruta de Windows a formato Docker si es necesario
                        if os.name == 'nt' or '\\' in project_dir:
                            # En Windows, Docker espera rutas con barras o rutas absolutas de Windows
                            project_dir = project_dir.replace('\\', '/')
                except Exception as e:
                    logger.warning(f"No se pudo obtener la ruta del host desde el contenedor: {str(e)}")
                    # Fallback: usar la ruta absoluta
                    project_dir = str(Path(settings.BASE_DIR).resolve())
                    if os.name == 'nt' or '\\' in project_dir:
                        project_dir = project_dir.replace('\\', '/')
            else:
                # Estamos fuera de Docker, usar la ruta absoluta del host
                project_dir = str(Path(settings.BASE_DIR).resolve())
                if os.name == 'nt' or '\\' in project_dir:
                    project_dir = project_dir.replace('\\', '/')
            
            # Crear directorios necesarios
            self._create_tenant_directories(schema_name)
            
            # Verificar/crear red
            try:
                network = client.networks.get(network_name)
            except docker.errors.NotFound:
                logger.info(f"Creando red Docker: {network_name}")
                network = client.networks.create(network_name, driver="bridge")
            
            # Obtener red de PostgreSQL para conectar el contenedor web
            db_networks = list(db_container.attrs['NetworkSettings']['Networks'].keys())
            chalan_network = None
            for net_name in db_networks:
                if 'chalan' in net_name.lower() and net_name != network_name:
                    chalan_network = client.networks.get(net_name)
                    break
            
            # Detener y eliminar contenedores existentes si existen
            for container_name in [web_container_name, nginx_container_name]:
                try:
                    existing = client.containers.get(container_name)
                    logger.info(f"Eliminando contenedor existente: {container_name}")
                    existing.stop()
                    existing.remove()
                except docker.errors.NotFound:
                    pass
            
            # Verificar si la imagen existe
            image_name = "chalanpro:2.0.0"
            try:
                client.images.get(image_name)
            except ImageNotFound:
                logger.warning(f"Imagen {image_name} no encontrada. Se intentará construir...")
                # Por ahora, devolver error si la imagen no existe
                # En producción, se podría construir automáticamente
                raise Exception(f"Imagen {image_name} no encontrada. Construye la imagen primero: docker build -t {image_name} .")
            
            # Crear contenedor web
            logger.info(f"Creando contenedor web: {web_container_name}")
            
            api_domain = f"api.{domain}"
            # Montar volúmenes: el directorio del proyecto debe montarse en /app
            volumes = {
                project_dir: {'bind': '/app', 'mode': 'rw'},
                f"{project_dir}/logs/{schema_name}": {'bind': '/app/logs', 'mode': 'rw'},
                f"{project_dir}/media/{schema_name}": {'bind': f'/app/media/{schema_name}', 'mode': 'rw'},
            }
            
            # Asegurar que el directorio de trabajo sea /app
            working_dir = '/app'
            
            # Variables de entorno para el contenedor web
            env_vars = {
                'DJANGO_SETTINGS_MODULE': 'project.settings.local',
                'VIRTUAL_HOST': api_domain,
                'LETSENCRYPT_HOST': api_domain,
                'TENANT_SCHEMA': schema_name,
                'TENANT_ID': tenant_id,
                'DATABASE_URL': f"postgresql://{postgres_user}:{postgres_password}@{db_container.name}:5432/{postgres_db}",
                'POSTGRES_HOST': db_container.name,
                'REDIS_URL': f"redis://{redis_container.name}:6379/0",
                'DJANGO_SECRET_KEY': django_secret_key,
                'DEBUG': 'True',
            }
            
            # Cargar variables de .env si existe
            env_file_path = Path(settings.BASE_DIR) / '.env'
            if env_file_path.exists():
                with open(env_file_path, 'r') as f:
                    for line in f:
                        line = line.strip()
                        if line and not line.startswith('#') and '=' in line:
                            key, value = line.split('=', 1)
                            if key not in env_vars:  # No sobrescribir las que ya están
                                env_vars[key] = value
            
            # Exponer puerto del backend para acceso directo
            # Calcular puerto dinámico basado en contenedores existentes
            existing_web_containers = client.containers.list(all=True, filters={'name': 'chalan-.*-web'})
            used_web_ports = set()
            for container in existing_web_containers:
                if container.attrs.get('HostConfig', {}).get('PortBindings'):
                    for port_binding in container.attrs['HostConfig']['PortBindings'].values():
                        if port_binding:
                            used_web_ports.add(int(port_binding[0]['HostPort']))
            
            # Encontrar el primer puerto disponible desde 8001
            web_port_host = 8001
            while web_port_host in used_web_ports:
                web_port_host += 1
            
            # Formato correcto para docker-py: container_port/tcp: host_port
            ports = {
                '8000/tcp': web_port_host
            }
            
            web_container = client.containers.run(
                image_name,
                name=web_container_name,
                command=f"sh -c 'cd /app && python manage.py migrate_schemas --schema={schema_name} && python manage.py runserver 0.0.0.0:8000'",
                environment=env_vars,
                volumes=volumes,
                working_dir=working_dir,
                network=network_name,  # Usar network (singular) en lugar de networks
                ports=ports,
                detach=True,
                restart_policy={"Name": "unless-stopped"},
            )
            
            # Conectar a la red de PostgreSQL si es diferente
            if chalan_network and chalan_network.name != network_name:
                logger.info(f"Conectando contenedor web a la red: {chalan_network.name}")
                chalan_network.connect(web_container)
            
            # Esperar un momento para que el contenedor inicie
            import time
            time.sleep(5)
            
            # Verificar que el contenedor está corriendo
            web_container.reload()
            if web_container.status != 'running':
                logs = web_container.logs(tail=50).decode('utf-8')
                raise Exception(f"El contenedor web no está corriendo. Logs: {logs}")
            
            # Crear contenedor nginx
            logger.info(f"Creando contenedor nginx: {nginx_container_name}")
            
            # Obtener rutas absolutas del host para los volúmenes
            # Cuando estamos en Docker, necesitamos usar las rutas del host montadas
            if os.path.exists('/.dockerenv') or os.path.exists('/proc/self/cgroup'):
                # Estamos dentro de Docker, obtener la ruta del host desde el contenedor actual
                try:
                    current_container = client.containers.get('chalan-backend')
                    mounts = current_container.attrs['Mounts']
                    host_project_dir = None
                    for mount in mounts:
                        if mount.get('Destination') == '/app':
                            host_project_dir = mount.get('Source')
                            break
                    if not host_project_dir:
                        # Fallback: usar la ruta del proyecto
                        host_project_dir = project_dir
                except Exception as e:
                    logger.warning(f"No se pudo obtener la ruta del host: {str(e)}")
                    host_project_dir = project_dir
            else:
                host_project_dir = project_dir
            
            # Construir rutas completas en el host
            nginx_conf_host_path = os.path.join(host_project_dir, 'vuefrontend', 'nginx.conf')
            vuefrontend_dist_host_path = os.path.join(host_project_dir, 'vuefrontend', 'dist')
            
            # Normalizar rutas para Windows
            if os.name == 'nt' or '\\' in nginx_conf_host_path:
                nginx_conf_host_path = nginx_conf_host_path.replace('\\', '/')
                vuefrontend_dist_host_path = vuefrontend_dist_host_path.replace('\\', '/')
            
            # Crear nginx.conf temporal con el nombre correcto del contenedor web del tenant
            # Usar un archivo temporal para evitar sobrescribir el archivo estático del proyecto
            import tempfile
            temp_nginx_conf = tempfile.NamedTemporaryFile(mode='w', suffix='.conf', delete=False)
            self._create_default_nginx_conf(Path(temp_nginx_conf.name), web_container_name)
            temp_nginx_conf.close()
            nginx_conf_host_path = temp_nginx_conf.name
            logger.info(f"Archivo nginx.conf temporal creado: {nginx_conf_host_path} con upstream: {web_container_name}")
            
            # Verificar y crear vuefrontend/dist si no existe
            vuefrontend_dist_path_obj = Path(vuefrontend_dist_host_path)
            if not vuefrontend_dist_path_obj.exists():
                vuefrontend_dist_path_obj.mkdir(parents=True, exist_ok=True)
                # Crear un index.html básico si no existe
                index_html = vuefrontend_dist_path_obj / 'index.html'
                if not index_html.exists():
                    with open(index_html, 'w') as f:
                        f.write('<html><body><h1>Chalan-Pro Tenant</h1><p>Frontend en construcción</p></body></html>')
            
            # Usar rutas absolutas del host para los volúmenes
            nginx_volumes = {
                vuefrontend_dist_host_path: {'bind': '/usr/share/nginx/html', 'mode': 'ro'},
                nginx_conf_host_path: {'bind': '/etc/nginx/conf.d/default.conf', 'mode': 'ro'},
            }
            
            nginx_env = {
                'VIRTUAL_HOST': f"{domain},www.{domain}",
                'LETSENCRYPT_HOST': f"{domain},www.{domain}",
                'TENANT_SCHEMA': schema_name,
            }
            
            # Exponer puerto de nginx para acceso directo
            # Calcular puerto dinámico basado en el schema_name para evitar conflictos
            # Buscar un puerto disponible empezando desde 8081
            # Obtener todos los contenedores nginx existentes para evitar conflictos
            existing_nginx_containers = client.containers.list(all=True, filters={'name': 'chalan-.*-nginx'})
            used_ports = set()
            for container in existing_nginx_containers:
                if container.attrs.get('HostConfig', {}).get('PortBindings'):
                    for port_binding in container.attrs['HostConfig']['PortBindings'].values():
                        if port_binding:
                            used_ports.add(int(port_binding[0]['HostPort']))
            
            # Encontrar el primer puerto disponible desde 8081
            nginx_port_host = 8081
            while nginx_port_host in used_ports:
                nginx_port_host += 1
            
            nginx_port_container = 80  # Puerto en el contenedor
            
            # Formato correcto para docker-py: container_port/tcp: host_port
            nginx_ports = {
                f'{nginx_port_container}/tcp': nginx_port_host
            }
            
            nginx_container = client.containers.run(
                'nginx:1.19.0-alpine',
                name=nginx_container_name,
                environment=nginx_env,
                volumes=nginx_volumes,
                network=network_name,  # Usar network (singular) en lugar de networks
                ports=nginx_ports,
                detach=True,
                restart_policy={"Name": "unless-stopped"},
            )
            
            # Verificar que el contenedor nginx está corriendo
            nginx_container.reload()
            if nginx_container.status != 'running':
                logs = nginx_container.logs(tail=50).decode('utf-8')
                raise Exception(f"El contenedor nginx no está corriendo. Logs: {logs}")
            
            logger.info(f"Contenedores Docker creados exitosamente: {web_container_name}, {nginx_container_name}")
            
            return {
                'success': True,
                'message': 'Contenedores Docker creados exitosamente usando docker-py',
                'web_container': web_container_name,
                'nginx_container': nginx_container_name,
                'web_status': web_container.status,
                'nginx_status': nginx_container.status,
            }
            
        except docker.errors.APIError as e:
            logger.error(f"Error de API de Docker: {str(e)}")
            return {
                'success': False,
                'error': f'Error de API de Docker: {str(e)}'
            }
        except Exception as e:
            logger.error(f"Error al crear contenedores con docker-py: {str(e)}", exc_info=True)
            return {
                'success': False,
                'error': f'Error al crear contenedores: {str(e)}'
            }
    
    def _find_container_by_pattern(self, client, patterns):
        """Encuentra un contenedor por patrones de nombre"""
        import docker
        containers = client.containers.list(all=True)
        for container in containers:
            for pattern in patterns:
                import re
                if re.search(pattern, container.name, re.IGNORECASE):
                    return container
        return None
    
    def _create_default_nginx_conf(self, nginx_conf_path, web_container_name=None):
        """Crea un archivo nginx.conf por defecto si no existe"""
        nginx_conf_path.parent.mkdir(parents=True, exist_ok=True)
        
        # Usar el nombre del contenedor web del tenant si se proporciona
        # Si no, usar chalan-backend como fallback
        backend_upstream = web_container_name if web_container_name else 'chalan-backend'
        
        nginx_config = f"""server {{
    listen 80;
    server_name _;
    root /usr/share/nginx/html;
    index index.html;

    location / {{
        try_files $uri $uri/ /index.html;
    }}

    location /api {{
        proxy_pass http://{backend_upstream}:8000;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
    }}
}}
"""
        with open(nginx_conf_path, 'w') as f:
            f.write(nginx_config)
        logger.info(f"Archivo nginx.conf creado: {nginx_conf_path} con upstream: {backend_upstream}")


@permission_classes([AllowAny])
class TenantInfoView(APIView):
    """
    API View para obtener información de un tenant por dominio
    Endpoint: GET /api/onboarding/tenant-info/?domain=example.com
    """
    
    def get(self, request):
        domain = request.query_params.get('domain')
        
        if not domain:
            return Response(
                {'error': 'Parámetro "domain" requerido'},
                status=status.HTTP_400_BAD_REQUEST
            )
        
        try:
            domain_obj = Domain.objects.select_related('tenant').get(domain=domain)
            tenant = domain_obj.tenant
            
            from .serializers import TenantSerializer
            serializer = TenantSerializer(tenant, context={'request': request})
            
            return Response(serializer.data, status=status.HTTP_200_OK)
            
        except Domain.DoesNotExist:
            return Response(
                {'error': 'Tenant no encontrado'},
                status=status.HTTP_404_NOT_FOUND
            )
