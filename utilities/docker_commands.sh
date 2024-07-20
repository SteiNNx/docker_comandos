#!/bin/bash
# Autor: Jorge Reyes

# Comandos Docker y Docker Compose comunes para desarrolladores

# Construir una imagen de Docker usando un Dockerfile específico
docker build -t <image-name>:<tag> -f <path/to/Dockerfile> .

# Ejecutar un contenedor interactivo a partir de una imagen
docker run -it --rm <image-name>:<tag> /bin/bash

# Listar contenedores en ejecución
docker ps

# Listar todos los contenedores (incluso los detenidos)
docker ps -a

# Detener un contenedor en ejecución
docker stop <container-id>

# Eliminar un contenedor detenido
docker rm <container-id>

# Ver logs de un contenedor específico
docker logs <container-id>

# Construir y levantar la aplicación utilizando un archivo docker-compose.yml
docker-compose up

# Construir y levantar la aplicación con reconstrucción de imágenes
docker-compose up --build

# Detener y eliminar todos los contenedores de Docker Compose
docker-compose down

# Verificar el estado de los servicios de Docker Compose
docker-compose ps

# Ver logs de servicios específicos en Docker Compose
docker-compose logs <service-name>

# Ejecutar un comando dentro de un servicio en Docker Compose
docker-compose exec <service-name> <command>

# Verificar la versión de Docker
docker --version

# Verificar la versión de Docker Compose
docker-compose --version

# Obtener ayuda y documentación de Docker y Docker Compose
docker --help
docker-compose --help

# Salir del script
exit 0
