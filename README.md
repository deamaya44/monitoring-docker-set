# Configuración de Entorno de Monitoreo en Docker

Este repositorio contiene scripts y configuraciones para desplegar un entorno de monitoreo en Docker.

## Requisitos Previos

Asegúrate de tener instalados los siguientes componentes antes de comenzar:

- Docker: [Descargar Docker](https://www.docker.com/get-started)
- Git: [Instalar Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Cómo Empezar

Para configurar tu entorno de monitoreo, sigue estos pasos:

1. Clona este repositorio en tu máquina local:

   ```bash
   git clone https://github.com/deamaya44/monitoring-docker-set.git

2. Accede al directorio del repositorio:

   ```bash
   cd monitoring-docker-set
   
3. Ejecuta el script firs-time.sh para configurar los archivos de configuracion necesarios:

   ```bash
   chmod +x first-time.sh
   ./first-time.sh

4. Ejecuta el script docker-containers.sh para desplegar el entorno de Monitoreo en Docker:

   ```bash
   chmod +x docker_containers.sh
   ./docker_containers.sh 
   
Este script se encargará de descargar las imágenes de Docker necesarias, configurar los contenedores y poner en funcionamiento tu entorno de monitoreo.

## Contacto

Si tienes preguntas o encuentras problemas, no dudes en crear un issue en este repositorio. Estamos aquí para ayudarte.
¡Disfruta monitoreando tu entorno con Docker!
