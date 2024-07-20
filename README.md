# 📘🐳 **Holy Docker: Tu Guía Definitiva**

## Propósito

Bienvenido 🐳,este repositorio es un recurso abierto para la comunidad hispanohablante. Nuestro objetivo es proporcionar una guía completa y accesible sobre Docker, facilitando el aprendizaje y la implementación de contenedores en diversos entornos.

- [📘🐳 **Holy Docker: Tu Guía Definitiva**](#-holy-docker-tu-guía-definitiva)
  - [Propósito](#propósito)
  - [Docker](#docker)
    - [¿Qué es Docker?](#qué-es-docker)
    - [¿Qué es un Contenedor?](#qué-es-un-contenedor)
    - [Beneficios de Usar Docker](#beneficios-de-usar-docker)
  - [Docker Compose](#docker-compose)
    - [¿Qué es Docker Compose?](#qué-es-docker-compose)
    - [¿Qué es un Archivo `docker-compose.yml`?](#qué-es-un-archivo-docker-composeyml)
      - [Componentes del Archivo `docker-compose.yml`](#componentes-del-archivo-docker-composeyml)
      - [Ejemplo Completo de `docker-compose.yml`](#ejemplo-completo-de-docker-composeyml)
      - [Explicación del Ejemplo](#explicación-del-ejemplo)
      - [Beneficios de Usar un Archivo `docker-compose.yml`](#beneficios-de-usar-un-archivo-docker-composeyml)
  - [Imagen y Contenedor](#imagen-y-contenedor)
    - [Imagen](#imagen)
    - [Contenedor](#contenedor)
    - [Resumen](#resumen)
    - [Comandos Docker con Ejemplos Detallados](#comandos-docker-con-ejemplos-detallados)
      - [Docker Exec](#docker-exec)
        - [Ejecución de Comandos con `docker exec`](#ejecución-de-comandos-con-docker-exec)
          - [Ejemplo 1: Ejecutar un Comando Simple](#ejemplo-1-ejecutar-un-comando-simple)
          - [Ejemplo 2: Acceder a un Entorno Interactivo](#ejemplo-2-acceder-a-un-entorno-interactivo)
          - [Nota Importante](#nota-importante)
      - [Docker Logs](#docker-logs)
        - [Visualización de Logs con `docker logs`](#visualización-de-logs-con-docker-logs)
          - [Ejemplo 1: Ver todos los Logs de un Contenedor](#ejemplo-1-ver-todos-los-logs-de-un-contenedor)
          - [Ejemplo 2: Ver las Últimas Líneas de los Logs](#ejemplo-2-ver-las-últimas-líneas-de-los-logs)
          - [Nota Importante](#nota-importante-1)
      - [Docker Top](#docker-top)
        - [Monitoreo de Procesos con `docker top`](#monitoreo-de-procesos-con-docker-top)
          - [Ejemplo 1: Ver los Procesos Activos en un Contenedor](#ejemplo-1-ver-los-procesos-activos-en-un-contenedor)
          - [Ejemplo 2: Ver los Procesos en un Contenedor con un Nombre Específico](#ejemplo-2-ver-los-procesos-en-un-contenedor-con-un-nombre-específico)
          - [Nota Importante](#nota-importante-2)
      - [Docker Stats](#docker-stats)
        - [Monitoreo de Recursos con `docker stats`](#monitoreo-de-recursos-con-docker-stats)
          - [Ejemplo 1: Ver Información de Uso de Recursos de un Contenedor](#ejemplo-1-ver-información-de-uso-de-recursos-de-un-contenedor)
          - [Ejemplo 2: Ver Información de Uso de Recursos de Múltiples Contenedores](#ejemplo-2-ver-información-de-uso-de-recursos-de-múltiples-contenedores)
          - [Nota Importante](#nota-importante-3)
      - [Docker Inspect](#docker-inspect)
        - [Recuperación de Información con `docker inspect`](#recuperación-de-información-con-docker-inspect)
          - [Ejemplo 1: Inspeccionar un Contenedor o Imagen](#ejemplo-1-inspeccionar-un-contenedor-o-imagen)
        - [Ejemplo 2: Enviar la Información a un Archivo](#ejemplo-2-enviar-la-información-a-un-archivo)
        - [Ejemplo 3: Obtener Información Específica (IP del Contenedor)](#ejemplo-3-obtener-información-específica-ip-del-contenedor)
        - [Nota Importante](#nota-importante-4)
      - [Docker Image](#docker-image)
        - [Opciones del Comando `docker image`](#opciones-del-comando-docker-image)
        - [Alternativas a Comandos Comunes](#alternativas-a-comandos-comunes)
      - [Docker Container](#docker-container)
        - [Opciones del Comando `docker container`](#opciones-del-comando-docker-container)
        - [Alternativas a Comandos Comunes](#alternativas-a-comandos-comunes-1)
      - [Docker --help](#docker---help)
        - [Ejemplo de Uso del Comando `docker container ls --help`](#ejemplo-de-uso-del-comando-docker-container-ls---help)
        - [Ejemplo de Uso del Comando `docker image ls --help`](#ejemplo-de-uso-del-comando-docker-image-ls---help)
        - [Ejemplo de Uso del Comando `docker run --help`](#ejemplo-de-uso-del-comando-docker-run---help)
      - [Docker Info](#docker-info)
        - [Ejemplo de Uso](#ejemplo-de-uso)
      - [Docker Version](#docker-version)
        - [Ejemplo de Uso](#ejemplo-de-uso-1)
      - [Docker Run](#docker-run)
        - [Ejemplo de Uso](#ejemplo-de-uso-2)
    - [Comandos Docker Image](#comandos-docker-image)
      - [Buscar Imagen Docker por CMD](#buscar-imagen-docker-por-cmd)
        - [Ejemplo de Uso](#ejemplo-de-uso-3)
        - [Opciones del Comando `docker search`](#opciones-del-comando-docker-search)
        - [Ejemplos de Uso de Opciones](#ejemplos-de-uso-de-opciones)
      - [Descargar Imagen](#descargar-imagen)
        - [Ejemplo de Uso](#ejemplo-de-uso-4)
        - [Opciones del Comando `docker pull`](#opciones-del-comando-docker-pull)
        - [Ejemplos de Uso de Opciones](#ejemplos-de-uso-de-opciones-1)
      - [Ver Imágenes en Repositorio Local](#ver-imágenes-en-repositorio-local)
        - [Ejemplo de Uso](#ejemplo-de-uso-5)
        - [Opciones del Comando `docker images`](#opciones-del-comando-docker-images)
        - [Ejemplos de Uso de Opciones](#ejemplos-de-uso-de-opciones-2)
      - [Filtrar Imágenes](#filtrar-imágenes)
        - [Ejemplo de Uso](#ejemplo-de-uso-6)
        - [Descripción del Comando](#descripción-del-comando)
        - [Opciones del Comando `docker images -f`](#opciones-del-comando-docker-images--f)
        - [Ejemplos de Uso](#ejemplos-de-uso)
        - [Notas](#notas)
      - [Eliminar una Imagen](#eliminar-una-imagen)
        - [Descripción del Comando](#descripción-del-comando-1)
        - [Opciones del Comando `docker rmi`](#opciones-del-comando-docker-rmi)
        - [Ejemplos de Uso](#ejemplos-de-uso-1)
        - [Importante](#importante)
        - [Notas](#notas-1)
      - [Borrar Todas las Imágenes](#borrar-todas-las-imágenes)
        - [Descripción del Comando](#descripción-del-comando-2)
        - [Detalles del Comando](#detalles-del-comando)
        - [Ejemplo de Uso](#ejemplo-de-uso-7)
        - [Importante](#importante-1)
        - [Precauciones](#precauciones)
      - [Historial de Cambios de una Imagen](#historial-de-cambios-de-una-imagen)
        - [Descripción del Comando](#descripción-del-comando-3)
        - [Detalles del Comando](#detalles-del-comando-1)
        - [Ejemplo de Uso](#ejemplo-de-uso-8)
        - [Salida del Comando](#salida-del-comando)
        - [Ejemplo de Salida](#ejemplo-de-salida)
        - [Uso Típico](#uso-típico)
        - [Nota](#nota)
  - [Comandos Contenedores](#comandos-contenedores)
    - [Crear un Contenedor](#crear-un-contenedor)
      - [Descripción del Comando](#descripción-del-comando-4)
      - [Ejemplo de Uso](#ejemplo-de-uso-9)
      - [Crear un Contenedor con Nombre](#crear-un-contenedor-con-nombre)
      - [Crear un Contenedor Interactivo](#crear-un-contenedor-interactivo)
      - [Crear un Contenedor en Segundo Plano (Background)](#crear-un-contenedor-en-segundo-plano-background)
      - [Crear un Contenedor con Eliminación Automática](#crear-un-contenedor-con-eliminación-automática)
    - [Ingresar a un Contenedor en Modo Interactivo](#ingresar-a-un-contenedor-en-modo-interactivo)
      - [Descripción del Comando](#descripción-del-comando-5)
      - [Uso](#uso)
    - [Salir de un Contenedor sin Detener la Ejecución](#salir-de-un-contenedor-sin-detener-la-ejecución)
      - [Descripción](#descripción)
    - [Detener un Contenedor](#detener-un-contenedor)
      - [Descripción del Comando](#descripción-del-comando-6)
      - [Uso](#uso-1)
    - [Detener Todos los Contenedores](#detener-todos-los-contenedores)
      - [Descripción del Comando](#descripción-del-comando-7)
      - [Uso](#uso-2)
    - [Ver Contenedores en Ejecución](#ver-contenedores-en-ejecución)
      - [Descripción de los Comandos](#descripción-de-los-comandos)
      - [Uso](#uso-3)
    - [Ver Contenedores Detenidos](#ver-contenedores-detenidos)
      - [Descripción del Comando](#descripción-del-comando-8)
      - [Uso](#uso-4)
    - [Ver Último Contenedor Arrancado](#ver-último-contenedor-arrancado)
      - [Descripción del Comando](#descripción-del-comando-9)
      - [Uso](#uso-5)
    - [Ver Últimos Contenedores que se Han Ejecutado (Cantidad)](#ver-últimos-contenedores-que-se-han-ejecutado-cantidad)
      - [Descripción del Comando](#descripción-del-comando-10)
      - [Uso](#uso-6)
    - [Ver IDs de Contenedores](#ver-ids-de-contenedores)
      - [Descripción de los Comandos](#descripción-de-los-comandos-1)
      - [Uso](#uso-7)
    - [Ver Tamaño del Contenedor](#ver-tamaño-del-contenedor)
      - [Descripción del Comando](#descripción-del-comando-11)
      - [Uso](#uso-8)
    - [Filtrar Lista de Contenedores (`--filter`, -f)](#filtrar-lista-de-contenedores---filter--f)
      - [Opciones de Filtros](#opciones-de-filtros)
      - [Ejemplos de Uso](#ejemplos-de-uso-2)
        - [Filtrar por Nombre](#filtrar-por-nombre)
    - [Eliminar un Contenedor](#eliminar-un-contenedor)
      - [Opción 1: Eliminar por ID](#opción-1-eliminar-por-id)
      - [Opción 2: Eliminar por Nombre](#opción-2-eliminar-por-nombre)
    - [Eliminar un Contenedor en Ejecución](#eliminar-un-contenedor-en-ejecución)
    - [Eliminar Todos los Contenedores](#eliminar-todos-los-contenedores)
    - [Historial Cambios Contenedor](#historial-cambios-contenedor)
      - [Opción 1: `docker diff`](#opción-1-docker-diff)
      - [Opción 2: `docker container diff`](#opción-2-docker-container-diff)
  - [Puertos Docker](#puertos-docker)
    - [Convertir Puertos en Públicos](#convertir-puertos-en-públicos)
      - [Confirmar Puertos Públicos](#confirmar-puertos-públicos)
    - [Crear un Contenedor con un Puerto Específico](#crear-un-contenedor-con-un-puerto-específico)
      - [Ejemplo con Nombre Personalizado](#ejemplo-con-nombre-personalizado)
  - [Redes Docker](#redes-docker)
    - [Redes Predeterminadas](#redes-predeterminadas)
    - [Ver Lista de Redes en Docker](#ver-lista-de-redes-en-docker)
    - [Obtener Dirección IP de un Contenedor](#obtener-dirección-ip-de-un-contenedor)
    - [Obtener Información Detallada de una Red](#obtener-información-detallada-de-una-red)
    - [Crear una Nueva Red](#crear-una-nueva-red)
      - [Crear Red con Rango de Subnet](#crear-red-con-rango-de-subnet)
    - [Asociar un Contenedor a una Red](#asociar-un-contenedor-a-una-red)
    - [Enlazar Contenedores](#enlazar-contenedores)
      - [Bridge (Red por Defecto)](#bridge-red-por-defecto)
      - [Red Personalizada](#red-personalizada)
    - [Borrar una Red](#borrar-una-red)
  - [Volúmenes en Docker](#volúmenes-en-docker)
    - [¿Por qué usar Volúmenes?](#por-qué-usar-volúmenes)
    - [Crear un Volumen](#crear-un-volumen)
    - [Listar Volúmenes](#listar-volúmenes)
    - [Obtener Información de un Volumen](#obtener-información-de-un-volumen)
    - [Crear un Directorio Compartido (Carpeta)](#crear-un-directorio-compartido-carpeta)
    - [Compartir un Volumen entre Contenedores](#compartir-un-volumen-entre-contenedores)
    - [Crear Volumen de Forma Independiente](#crear-volumen-de-forma-independiente)
      - [Nombre Personalizado](#nombre-personalizado)
      - [Permiso de Lectura](#permiso-de-lectura)
      - [Uso en Windows](#uso-en-windows)
    - [Borrar un Volumen Específico](#borrar-un-volumen-específico)
    - [Borrar Volúmenes Inactivos o No Asociados](#borrar-volúmenes-inactivos-o-no-asociados)
  - [Manipulación de Imagen y Contenedor](#manipulación-de-imagen-y-contenedor)
    - [Modificar una Imagen](#modificar-una-imagen)
      - [1. Crear un Contenedor Basado en una Imagen](#1-crear-un-contenedor-basado-en-una-imagen)
      - [2. Realizar Cambios en el Contenedor](#2-realizar-cambios-en-el-contenedor)
      - [3. Crear una Imagen a Partir del Contenedor Modificado](#3-crear-una-imagen-a-partir-del-contenedor-modificado)
    - [Crear una Imagen](#crear-una-imagen)
      - [Crear una Imagen Manualmente](#crear-una-imagen-manualmente)
      - [Ejemplo de Creación de Imagen](#ejemplo-de-creación-de-imagen)
    - [Consejos Adicionales](#consejos-adicionales)
  - [Dockerfile](#dockerfile)
    - [Introducción](#introducción)
    - [Ejemplo Básico](#ejemplo-básico)
    - [Crear una Imagen con Dockerfile](#crear-una-imagen-con-dockerfile)
      - [Estructura Básica del Dockerfile](#estructura-básica-del-dockerfile)
      - [Ejemplo de Dockerfile](#ejemplo-de-dockerfile)
    - [Comando `RUN`](#comando-run)
    - [Comando `CMD`](#comando-cmd)
    - [Comando `ENTRYPOINT`](#comando-entrypoint)
    - [Comando `WORKDIR`](#comando-workdir)
    - [Comando `COPY` y `ADD`](#comando-copy-y-add)
      - [`COPY`](#copy)
      - [`ADD`](#add)
    - [Comando `ENV`](#comando-env)
    - [Comando `ARG`](#comando-arg)
    - [Comando `EXPOSE`](#comando-expose)
    - [Comando `VOLUME`](#comando-volume)
  - [Docker Hub](#docker-hub)
    - [Subir una Imagen a Docker Hub](#subir-una-imagen-a-docker-hub)
      - [1. Iniciar Sesión en Docker Hub](#1-iniciar-sesión-en-docker-hub)
      - [2. Etiquetar la Imagen](#2-etiquetar-la-imagen)
      - [3. Subir la Imagen a Docker Hub](#3-subir-la-imagen-a-docker-hub)
      - [Resumen](#resumen-1)
  - [Docker Compose](#docker-compose-1)
    - [¿Qué es Docker Compose?](#qué-es-docker-compose-1)
    - [Instalación de Docker Compose](#instalación-de-docker-compose)
      - [En Windows y macOS](#en-windows-y-macos)
      - [En Linux](#en-linux)
    - [Comandos Docker-Compose](#comandos-docker-compose)
      - [`docker-compose up`](#docker-compose-up)
        - [¿Qué Hace el Comando `docker-compose up`?](#qué-hace-el-comando-docker-compose-up)
        - [Ejemplo de Uso](#ejemplo-de-uso-10)
        - [Opciones Adicionales](#opciones-adicionales)
      - [`docker-compose ps`](#docker-compose-ps)
        - [¿Qué Hace el Comando `docker-compose ps`?](#qué-hace-el-comando-docker-compose-ps)
        - [Ejemplo de Uso](#ejemplo-de-uso-11)
        - [Opciones Adicionales](#opciones-adicionales-1)
        - [Casos de Uso](#casos-de-uso)
      - [`docker-compose images`](#docker-compose-images)
        - [¿Qué Hace el Comando `docker-compose images`?](#qué-hace-el-comando-docker-compose-images)
        - [Ejemplo de Uso](#ejemplo-de-uso-12)
        - [Opciones Adicionales](#opciones-adicionales-2)
        - [Casos de Uso](#casos-de-uso-1)
      - [`docker-compose config`](#docker-compose-config)
        - [¿Qué Hace el Comando `docker-compose config`?](#qué-hace-el-comando-docker-compose-config)
        - [Comandos y Opciones](#comandos-y-opciones)
        - [Consideraciones Importantes](#consideraciones-importantes)
      - [`docker-compose start`](#docker-compose-start)
        - [¿Qué Hace el Comando `docker-compose start`?](#qué-hace-el-comando-docker-compose-start)
        - [Comando y Ejemplos](#comando-y-ejemplos)
        - [Consideraciones Importantes](#consideraciones-importantes-1)
        - [Resumen](#resumen-2)
      - [`docker-compose logs`](#docker-compose-logs)
        - [¿Qué Hace el Comando `docker-compose logs`?](#qué-hace-el-comando-docker-compose-logs)
        - [Comando y Ejemplos](#comando-y-ejemplos-1)
        - [Consideraciones Importantes](#consideraciones-importantes-2)
        - [Resumen](#resumen-3)
      - [`docker-compose top`](#docker-compose-top)
        - [¿Qué Hace el Comando `docker-compose top`?](#qué-hace-el-comando-docker-compose-top)
        - [Comando y Ejemplos](#comando-y-ejemplos-2)
        - [Consideraciones Importantes](#consideraciones-importantes-3)
        - [Resumen](#resumen-4)
      - [`docker-compose pause`](#docker-compose-pause)
        - [¿Qué Hace el Comando `docker-compose pause`?](#qué-hace-el-comando-docker-compose-pause)
        - [Comando y Ejemplos](#comando-y-ejemplos-3)
        - [Consideraciones Importantes](#consideraciones-importantes-4)
        - [Resumen](#resumen-5)
      - [`docker-compose restart`](#docker-compose-restart)
        - [¿Qué Hace el Comando `docker-compose restart`?](#qué-hace-el-comando-docker-compose-restart)
        - [Comando y Ejemplos](#comando-y-ejemplos-4)
        - [Consideraciones Importantes](#consideraciones-importantes-5)
      - [`docker-compose stop`](#docker-compose-stop)
        - [¿Qué Hace el Comando `docker-compose stop`?](#qué-hace-el-comando-docker-compose-stop)
        - [Comando y Ejemplos](#comando-y-ejemplos-5)
        - [Consideraciones Importantes](#consideraciones-importantes-6)
      - [`docker-compose rm`](#docker-compose-rm)
        - [¿Qué Hace el Comando `docker-compose rm`?](#qué-hace-el-comando-docker-compose-rm)
        - [Comando y Ejemplos](#comando-y-ejemplos-6)
        - [Consideraciones Importantes](#consideraciones-importantes-7)
      - [`docker-compose down`](#docker-compose-down)
        - [¿Qué Hace el Comando `docker-compose down`?](#qué-hace-el-comando-docker-compose-down)
        - [Comando y Ejemplos](#comando-y-ejemplos-7)
        - [Consideraciones Importantes](#consideraciones-importantes-8)
  - [Estructura del fichero Docker-Compose](#estructura-del-fichero-docker-compose)
    - [1. **version**](#1-version)
    - [2. **services**](#2-services)
      - [Ejemplo Básico](#ejemplo-básico-1)
    - [Construcción y Ejecución de Docker-Compose](#construcción-y-ejecución-de-docker-compose)
      - [Construir y Ejecutar Servicios](#construir-y-ejecutar-servicios)
      - [Construcción de Servicios](#construcción-de-servicios)
    - [Listar Micro Servicios](#listar-micro-servicios)
    - [Enlazar Contenedores, Servicios, Puertos y Variables](#enlazar-contenedores-servicios-puertos-y-variables)
    - [Volúmenes en Docker Compose](#volúmenes-en-docker-compose)
    - [Redes en Docker Compose](#redes-en-docker-compose)
    - [Cambiar Nombre de Archivo y Proyecto de Docker-Compose](#cambiar-nombre-de-archivo-y-proyecto-de-docker-compose)
      - [Ocupar Fichero Docker-Compose con Otro Nombre](#ocupar-fichero-docker-compose-con-otro-nombre)
      - [Cambiar Nombre del Proyecto](#cambiar-nombre-del-proyecto)
      - [Ejecutar con Nuevas Opciones](#ejecutar-con-nuevas-opciones)
      - [Ver Lista con Nuevo Nombre de Proyecto](#ver-lista-con-nuevo-nombre-de-proyecto)
  - [Docker Registry: Creación, Uso y Almacenamiento](#docker-registry-creación-uso-y-almacenamiento)
    - [Crear un Registro de Imágenes](#crear-un-registro-de-imágenes)
      - [Descargar la Imagen del Registro](#descargar-la-imagen-del-registro)
      - [Crear un Contenedor de Registro](#crear-un-contenedor-de-registro)
      - [Subir y Descargar Imágenes](#subir-y-descargar-imágenes)
        - [Etiquetar la Imagen](#etiquetar-la-imagen)
          - [Ejemplo](#ejemplo)
      - [Subir Imagen al Registro](#subir-imagen-al-registro)
        - [Ejemplo](#ejemplo-1)
    - [Descargar Imagen del Registro](#descargar-imagen-del-registro)
      - [Ejemplo](#ejemplo-2)
    - [Almacenamiento en Docker Registry](#almacenamiento-en-docker-registry)
      - [Ubicación Predeterminada del Almacenamiento](#ubicación-predeterminada-del-almacenamiento)
      - [Configurar Ubicación Personalizada del Almacenamiento](#configurar-ubicación-personalizada-del-almacenamiento)
        - [Ejemplo](#ejemplo-3)
      - [Configuración Adicional y Recomendaciones](#configuración-adicional-y-recomendaciones)
  - [Kubernetes](#kubernetes)
    - [Contribuye](#contribuye)

## Docker

### ¿Qué es Docker?

Docker es una plataforma diseñada para crear, implementar y ejecutar aplicaciones en contenedores ligeros y portables. Los contenedores permiten que las aplicaciones y sus dependencias se empaqueten juntas, asegurando que se ejecuten de manera consistente en cualquier entorno que tenga Docker instalado, independientemente del sistema operativo subyacente.

### ¿Qué es un Contenedor?

Un contenedor es una "caja" que contiene todo lo necesario para ejecutar una aplicación: el código de la aplicación, las bibliotecas, dependencias y configuraciones necesarias. Esto garantiza que la aplicación se comporte de la misma manera sin importar dónde se ejecute, eliminando problemas de compatibilidad entre diferentes entornos de desarrollo, prueba y producción.

### Beneficios de Usar Docker

- **Portabilidad**: Docker permite que las aplicaciones se ejecuten de manera uniforme en diferentes sistemas operativos y plataformas.
- **Aislamiento**: Cada contenedor funciona de manera aislada, evitando conflictos de dependencias entre aplicaciones.
- **Escalabilidad**: Docker facilita el escalamiento horizontal, permitiendo ejecutar múltiples instancias de contenedores de una manera eficiente.
- **Eficiencia**: Los contenedores comparten el mismo kernel del sistema operativo, lo que los hace más ligeros y rápidos que las máquinas virtuales tradicionales.

## Docker Compose

### ¿Qué es Docker Compose?

Docker Compose es una herramienta que permite definir y gestionar aplicaciones multi-contenedor. Con Docker Compose, puedes definir un entorno completo con múltiples servicios (como bases de datos, aplicaciones web y servicios de backend) en un solo archivo docker-compose.yml y luego iniciar todo el entorno con un solo comando.

### ¿Qué es un Archivo `docker-compose.yml`?

Un archivo `docker-compose.yml` es un archivo de configuración en formato YAML utilizado por Docker Compose para definir y ejecutar aplicaciones multi-contenedor. En este archivo, puedes especificar todos los servicios que componen tu aplicación, así como sus configuraciones, redes y volúmenes necesarios.

#### Componentes del Archivo `docker-compose.yml`

1. **Version**:
   - La versión del esquema de Compose que estás utilizando. Diferentes versiones soportan diferentes características.

   ```yaml
   version: '3.8'
   ```

2. **Services (Servicios)**:
   - Aquí defines los diferentes servicios que conforman tu aplicación. Cada servicio representa un contenedor de Docker.

   ```yaml
   services:
     web:
       # Configuración del servicio 'web'
     db:
       # Configuración del servicio 'db'
   ```

3. **Build (Construcción)**:
   - Especifica cómo construir la imagen de Docker para el servicio. Puede ser un directorio con un Dockerfile o una imagen existente.

   ```yaml
   services:
     web:
       build: .
   ```

4. **Image (Imagen)**:
   - Si no deseas construir una imagen, puedes especificar una imagen existente que Docker Compose debe usar para el servicio.
  
   ```yaml
   services:
     db:
       image: mongo:4.2
   ```

5. **Ports (Puertos)**:
   - Mapea puertos del contenedor a puertos en el host. Esto es útil para exponer servicios al exterior.

   ```yaml
   services:
     web:
       ports:
         - "3000:3000"
   ```

6. **Volumes (Volúmenes)**:
   - Monta volúmenes para persistencia de datos y compartir archivos entre el contenedor y el host.

   ```yaml
   services:
     db:
       volumes:
         - mongo-data:/data/db
   ```

7. **Environment (Variables de Entorno)**:
   - Define variables de entorno que se pasarán al contenedor. Útil para configurar el comportamiento del servicio.

   ```yaml
   services:
     web:
       environment:
         - NODE_ENV=development
   ```

8. **Networks (Redes)**:
   - Define redes personalizadas para que los servicios puedan comunicarse entre sí de manera aislada.

   ```yaml
   services:
     web:
       networks:
         - frontend
     db:
       networks:
         - backend
   ```

9. **Depends_on (Dependencias)**:
   - Especifica dependencias entre servicios, asegurando que ciertos servicios se inicien antes que otros.

   ```yaml
   services:
     web:
       depends_on:
         - db
   ```

#### Ejemplo Completo de `docker-compose.yml`

A continuación, un ejemplo más completo que incluye varios de los componentes mencionados:

```yaml
version: '3.8'

services:
  web:
    build: .
    ports:
      - "3000:3000"
    volumes:
      - .:/app
    environment:
      - NODE_ENV=development
    depends_on:
      - db
    networks:
      - frontend

  db:
    image: mongo:4.2
    ports:
      - "27017:27017"
    volumes:
      - mongo-data:/data/db
    networks:
      - backend

volumes:
  mongo-data:

networks:
  frontend:
  backend:
```

#### Explicación del Ejemplo

- **version**: Usa la versión 3.8 del esquema de Compose.
- **services**: Define dos servicios: `web` y `db`.
  - **web**: Construye la imagen desde el Dockerfile en el directorio actual, mapea el puerto 3000, monta el directorio de la aplicación y establece una variable de entorno. Depende del servicio `db` y está conectado a la red `frontend`.
  - **db**: Usa una imagen de MongoDB, mapea el puerto 27017, monta un volumen para persistencia de datos y está conectado a la red `backend`.
- **volumes**: Define un volumen llamado `mongo-data` para persistir los datos de MongoDB.
- **networks**: Define dos redes: `frontend` y `backend`.

#### Beneficios de Usar un Archivo `docker-compose.yml`

- **Consistencia**: Define toda la configuración de tu aplicación en un solo archivo, asegurando que cualquier persona que ejecute el archivo obtenga el mismo entorno.
- **Facilidad de Uso**: Un solo comando (`docker-compose up`) puede iniciar todos los servicios necesarios para tu aplicación.
- **Aislamiento**: Cada servicio se ejecuta en su propio contenedor, evitando conflictos entre dependencias.
- **Escalabilidad**: Puedes escalar los servicios fácilmente especificando el número de instancias que deseas ejecutar.

## Imagen y Contenedor

Docker es una herramienta que facilita la distribución y ejecución de "Máquinas" virtualizadas.

### Imagen

- **Definición**: Una imagen es un paquete de software que contiene todo lo necesario para ejecutar una aplicación, incluidos el código, las bibliotecas, las dependencias y las configuraciones.
- **Uso**: Las imágenes son plantillas estáticas que se distribuyen y se utilizan para crear contenedores.

### Contenedor

- **Definición**: Un contenedor es una instancia en ejecución de una imagen. Contiene todo lo que necesita la aplicación para funcionar y se ejecuta de manera aislada del sistema anfitrión y de otros contenedores.
- **Uso**: Desde una sola imagen, se pueden crear múltiples contenedores, cada uno ejecutándose de manera independiente.

### Resumen

- **Imágenes**: Son plantillas reutilizables y distribuidas que contienen todo lo necesario para la aplicación.
- **Contenedores**: Son instancias ejecutables de las imágenes que proporcionan un entorno aislado y consistente para la aplicación.

Desde una única imagen, puedes crear múltiples contenedores, aprovechando al máximo la eficiencia y la escalabilidad que Docker ofrece.

### Comandos Docker con Ejemplos Detallados

#### Docker Exec

El comando `exec` es una herramienta de administración de contenedores que permite ejecutar comandos dentro de un contenedor que ya está en ejecución. Este comando es particularmente útil cuando necesitas interactuar con un contenedor que no tiene un entorno interactivo preconfigurado.

##### Ejecución de Comandos con `docker exec`

###### Ejemplo 1: Ejecutar un Comando Simple

Puedes ejecutar un comando simple dentro de un contenedor especificando su ID o nombre. Por ejemplo, para imprimir "hola-mundo" dentro de un contenedor llamado `ubuntu`:

```bash
docker exec ubuntu echo hola-mundo
```

**Resultado:**

```bash
# Ejemplo 1
[XXXX@XXX ~]# docker exec ubuntu echo hola-mundo
hola-mundo
```

Este comando imprime "hola-mundo" en la salida estándar del contenedor `ubuntu`.

###### Ejemplo 2: Acceder a un Entorno Interactivo

Para acceder a un entorno de shell interactivo dentro de un contenedor en ejecución, puedes usar la opción `-it`. Esto es útil para realizar tareas de administración o depuración en tiempo real. Por ejemplo, para iniciar una sesión bash interactiva dentro de un contenedor llamado `Nombre_Contenedor`:

```bash
docker exec -it Nombre_Contenedor bash
```

**Resultado:**

```bash
# Ejemplo 2
[XXXX@XXX ~]# docker exec -it Nombre_Contenedor bash
root@Nombre_Contenedor:/#
```

Este comando te proporciona un terminal interactivo dentro del contenedor, permitiéndote ejecutar comandos directamente.

###### Nota Importante

- **Requisitos**: El contenedor debe estar en ejecución para usar `docker exec`.
- **Flexibilidad**: Puedes ejecutar cualquier comando que sea válido en el entorno del contenedor, no solo `bash` o `echo`.

Utilizar `docker exec` es fundamental para la administración diaria de contenedores, permitiéndote interactuar y gestionar contenedores de manera eficiente sin necesidad de reiniciarlos o configurar accesos adicionales.

#### Docker Logs

El comando `logs` permite ver la salida de un contenedor en ejecución, lo cual es útil para monitorear y depurar aplicaciones que se ejecutan en segundo plano.

##### Visualización de Logs con `docker logs`

###### Ejemplo 1: Ver todos los Logs de un Contenedor

Puedes ver todos los logs de un contenedor especificando su ID o nombre. Por ejemplo, para ver los logs de un contenedor llamado `mi_contenedor`:

```bash
docker logs mi_contenedor
```

**Resultado:**

```bash
# Ejemplo 1
[XXXX@XXX ~]# docker logs mi_contenedor
[Fecha y Hora] Mensaje de log 1
[Fecha y Hora] Mensaje de log 2
...
[Fecha y Hora] Mensaje de log n
```

Este comando muestra toda la salida que el contenedor `mi_contenedor` ha generado desde que comenzó a ejecutarse.

###### Ejemplo 2: Ver las Últimas Líneas de los Logs

Para evitar que se muestren todos los logs y centrarse en las últimas líneas que son más relevantes, puedes usar la opción `--tail` seguida del número de líneas que deseas ver. Por ejemplo, para ver las últimas 20 líneas de los logs de un contenedor con el ID `1234asd`:

```bash
docker logs 1234asd --tail 20
```

**Resultado:**

```bash
# Ejemplo 2
[XXXX@XXX ~]# docker logs 1234asd --tail 20
[Fecha y Hora] Mensaje de log 980
[Fecha y Hora] Mensaje de log 981
...
[Fecha y Hora] Mensaje de log 1000
```

Este comando muestra solo las últimas 20 líneas de los logs del contenedor `1234asd`, ayudando a concentrarse en los eventos más recientes.

###### Nota Importante

- **Requisitos**: El contenedor debe estar en ejecución o haber estado en ejecución para que los logs estén disponibles.
- **Flexibilidad**: Puedes usar otras opciones como `--follow` para seguir los logs en tiempo real o `--since` para ver los logs generados desde un momento específico.

Utilizar `docker logs` es esencial para monitorear el comportamiento y la salida de tus contenedores, permitiéndote detectar y solucionar problemas de manera eficiente.

#### Docker Top

El comando `top` es una herramienta de administración de contenedores que permite identificar cuál es el proceso que más recursos consume dentro de un contenedor. Este comando es útil para monitorear el rendimiento y diagnosticar problemas en contenedores en ejecución.

##### Monitoreo de Procesos con `docker top`

###### Ejemplo 1: Ver los Procesos Activos en un Contenedor

Puedes usar `docker top` para listar todos los procesos activos dentro de un contenedor especificando su ID o nombre. Por ejemplo, para ver los procesos en un contenedor llamado `ubuntu`:

```bash
docker top ubuntu
```

**Resultado:**

```bash
# Ejemplo 1
[XXXX@XXX ~]# docker top ubuntu
UID                 PID                 PPID                C                   STIME               TTY                 TIME                CMD
root                1234                5678                0                   01:23               ?                   00:00:00            /bin/bash
```

Este comando muestra una lista de procesos en el contenedor `ubuntu`, incluyendo detalles como UID (User ID), PID (Process ID), PPID (Parent Process ID), uso de CPU (C), hora de inicio (STIME), TTY (terminal asociado), tiempo de CPU (TIME) y el comando ejecutado (CMD).

###### Ejemplo 2: Ver los Procesos en un Contenedor con un Nombre Específico

Para obtener información sobre los procesos en un contenedor con un nombre específico, como `my_container`, puedes usar el siguiente comando:

```bash
docker top my_container
```

**Resultado:**

```bash
# Ejemplo 2
[XXXX@XXX ~]# docker top my_container
UID                 PID                 PPID                C                   STIME               TTY                 TIME                CMD
root                2345                6789                1                   02:34               ?                   00:00:01            /usr/bin/python3
```

Este comando muestra una lista de procesos en el contenedor `my_container`, proporcionando una visión detallada de qué procesos están corriendo y su consumo de recursos.

###### Nota Importante

- **Requisitos**: El contenedor debe estar en ejecución para usar `docker top`.
- **Usos**: `docker top` es útil para el monitoreo en tiempo real y para detectar procesos que puedan estar consumiendo recursos excesivos, ayudando en la optimización y resolución de problemas en entornos de contenedores.

Utilizar `docker top` es esencial para la administración efectiva de contenedores, permitiendo un análisis detallado del rendimiento y el comportamiento de los procesos dentro del contenedor.

#### Docker Stats

El comando `stats` es una herramienta de administración de contenedores que permite ver información en tiempo real sobre el uso de recursos de un contenedor, como CPU y memoria, entre otros. Este comando es muy útil para monitorear el rendimiento y la salud de los contenedores en ejecución.

##### Monitoreo de Recursos con `docker stats`

###### Ejemplo 1: Ver Información de Uso de Recursos de un Contenedor

Puedes usar `docker stats` para mostrar estadísticas en tiempo real de un contenedor especificando su ID o nombre. Por ejemplo, para ver las estadísticas de un contenedor llamado `mi_contenedor`:

```bash
docker stats mi_contenedor
```

**Resultado:**

```bash
# Ejemplo 1
[XXXX@XXX ~]# docker stats mi_contenedor
CONTAINER ID   NAME             CPU %     MEM USAGE / LIMIT     MEM %     NET I/O          BLOCK I/O         PIDS
1234abcd5678   mi_contenedor    0.34%     45.5MiB / 1.95GiB     2.28%     1.2kB / 1.3kB    5.1MB / 0B        19
```

Este comando muestra estadísticas en tiempo real del contenedor `mi_contenedor`, incluyendo el uso de CPU, uso de memoria, tráfico de red, I/O de bloques y el número de procesos activos (PIDS).

###### Ejemplo 2: Ver Información de Uso de Recursos de Múltiples Contenedores

Para obtener estadísticas de múltiples contenedores en ejecución, puedes simplemente ejecutar `docker stats` sin especificar un contenedor. Esto mostrará las estadísticas de todos los contenedores activos:

```bash
docker stats
```

**Resultado:**

```bash
# Ejemplo 2
[XXXX@XXX ~]# docker stats
CONTAINER ID   NAME             CPU %     MEM USAGE / LIMIT     MEM %     NET I/O          BLOCK I/O         PIDS
1234abcd5678   mi_contenedor    0.34%     45.5MiB / 1.95GiB     2.28%     1.2kB / 1.3kB    5.1MB / 0B        19
abcd1234efgh   otro_contenedor  0.01%     22.3MiB / 1.95GiB     1.12%     800B / 900B      2.5MB / 0B        7
```

Este comando proporciona una vista consolidada del uso de recursos de todos los contenedores en ejecución, lo cual es útil para tener una visión general del rendimiento de todos los contenedores en tu entorno.

###### Nota Importante

- **Requisitos**: El contenedor debe estar en ejecución para usar `docker stats`.
- **Flexibilidad**: Puedes utilizar filtros y opciones adicionales para personalizar la salida de `docker stats`, como especificar un formato de salida personalizado usando la opción `--format`.

Utilizar `docker stats` es crucial para el monitoreo continuo y la gestión de recursos de los contenedores, ayudando a asegurar que los contenedores operen dentro de los límites de recursos y a identificar rápidamente cualquier problema de rendimiento.

#### Docker Inspect

El comando `inspect` permite recuperar información detallada de una imagen o contenedor, incluyendo sus propiedades y características. Este comando es extremadamente útil para obtener un análisis profundo de los contenedores o imágenes en tu entorno.

##### Recuperación de Información con `docker inspect`

###### Ejemplo 1: Inspeccionar un Contenedor o Imagen

Puedes usar `docker inspect` para obtener información detallada de un contenedor o imagen especificando su ID o nombre. Por ejemplo, para inspeccionar un contenedor llamado `mi_contenedor`:

```ps
docker inspect mi_contenedor
```

**Resultado:**

```json
[
    {
        "Id": "1234abcd5678",
        "Created": "2023-07-19T14:30:00.000Z",
        "Path": "/bin/bash",
        "Args": [],
        "State": {
            "Status": "running",
            "Running": true,
            "Paused": false,
            "Restarting": false,
            "OOMKilled": false,
            "Dead": false,
            "Pid": 12345,
            "ExitCode": 0,
            "Error": "",
            "StartedAt": "2023-07-19T14:30:01.000Z",
            "FinishedAt": "0001-01-01T00:00:00Z"
        },
        "Image": "sha256:abcd1234efgh5678ijkl9012mnop3456qrst7890uvwx1234yzab5678cdef9012",
        "Name": "/mi_contenedor",
        "NetworkSettings": {
            "Networks": {
                "bridge": {
                    "IPAddress": "172.17.0.2"
                }
            }
        }
    }
]
```

Este comando proporciona una gran cantidad de información sobre el contenedor `mi_contenedor`, incluyendo su ID, fecha de creación, estado, ID de imagen, nombre, configuraciones de red y más.

##### Ejemplo 2: Enviar la Información a un Archivo

Debido a la cantidad de información que `docker inspect` puede devolver, es recomendable enviar la salida a un archivo para su posterior inspección. Por ejemplo, para inspeccionar un contenedor llamado `mi_contenedor` y guardar la información en un archivo `info_contenedor.txt`:

```ps
docker inspect mi_contenedor > info_contenedor.txt
```

**Resultado:**

```bash
# Se crea un archivo llamado info_contenedor.txt con la información detallada del contenedor
```

Este comando guarda toda la información detallada del contenedor `mi_contenedor` en el archivo `info_contenedor.txt`.

##### Ejemplo 3: Obtener Información Específica (IP del Contenedor)

Puedes usar `docker inspect` con la opción `--format` para recuperar información específica. Por ejemplo, para obtener la dirección IP de un contenedor llamado `mi_contenedor`:

```ps
docker inspect --format='{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mi_contenedor
```

**Resultado:**

```bash
# Ejemplo 3
[XXXX@XXX ~]# docker inspect --format='{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mi_contenedor
172.17.0.2
```

Este comando devuelve la dirección IP del contenedor `mi_contenedor`.

##### Nota Importante

- **Formato JSON**: La información proporcionada por `docker inspect` se entrega en formato JSON, lo que facilita su análisis y procesamiento con herramientas automatizadas.
- **Flexibilidad**: Puedes personalizar la salida usando la opción `--format` para recuperar solo la información que necesitas, lo cual es útil para scripts y automatización.

Utilizar `docker inspect` es esencial para obtener una visión detallada y comprensiva de las propiedades y configuraciones de tus contenedores e imágenes, permitiéndote gestionar y diagnosticar tu entorno Docker de manera eficiente.

#### Docker Image

El comando `docker image` sirve para administrar imágenes de Docker, agrupando todos los comandos relacionados con las imágenes. A continuación, se presentan las opciones y sus descripciones:

##### Opciones del Comando `docker image`

| Comando | Descripción |
|:-------:|:------------|
| build   | Construir una imagen a partir de un Dockerfile |
| history | Mostrar el historial de una imagen |
| import  | Importar el contenido de una tarball para crear una imagen del sistema de archivos |
| inspect | Mostrar información detallada sobre una o más imágenes |
| load    | Cargar una imagen de un archivo tar o STDIN |
| ls      | Listar imágenes |
| prune   | Eliminar imágenes no utilizadas |
| pull    | Extraer una imagen o un repositorio de un registro |
| push    | Empujar una imagen o un repositorio a un registro |
| rm      | Eliminar una o más imágenes |
| save    | Guardar una o más imágenes en un archivo tar (transmitidas a STDOUT por defecto) |
| tag     | Crear una etiqueta TARGET_IMAGE que haga referencia a SOURCE_IMAGE |

##### Alternativas a Comandos Comunes

El comando `docker image` puede ser considerado una alternativa a ciertos comandos de Docker. A continuación se presentan algunas equivalencias:

| Opción 1         | Opción 2         |
|:----------------:|:----------------:|
| docker image ls  | docker images    |
| docker image rm  | docker rmi       |

Estas alternativas pueden simplificar la administración de imágenes al utilizar un conjunto coherente de comandos bajo `docker image`.

#### Docker Container

Al igual que `docker image`, el comando `docker container` agrupa todos los comandos relacionados con los contenedores. A continuación, se presentan las opciones y sus descripciones:

##### Opciones del Comando `docker container`

| Comando  | Descripción |
|:--------:|:------------|
| attach   | Conecte flujos de entrada, salida y error estándar locales a un contenedor en funcionamiento. |
| commit   | Crear una nueva imagen a partir de los cambios de un contenedor. |
| cp       | Copiar archivos/carpetas entre un contenedor y el sistema de archivos local. |
| create   | Crear un nuevo contenedor. |
| diff     | Inspeccionar cambios en archivos o directorios en el sistema de archivos de un contenedor. |
| exec     | Ejecutar un comando en un contenedor en ejecución. |
| export   | Exportar el sistema de archivos de un contenedor como un archivo tar. |
| inspect  | Mostrar información detallada sobre uno o más contenedores. |
| kill     | Matar uno o más contenedores en marcha. |
| logs     | Obtener los logs de un contenedor. |
| ls       | Listar contenedores. |
| pause    | Pausar todos los procesos dentro de uno o más contenedores. |
| port     | Listar mapeos de puertos o un mapeo específico para el contenedor. |
| prune    | Retirar todos los contenedores parados. |
| rename   | Renombrar un contenedor. |
| restart  | Reiniciar uno o más contenedores. |
| rm       | Retirar uno o más contenedores. |
| run      | Ejecutar un comando en un nuevo contenedor. |
| stats    | Mostrar una secuencia en vivo de estadísticas de uso de recursos del contenedor(es). |
| stop     | Parar uno o más contenedores en ejecución. |
| top      | Mostrar los procesos en ejecución de un contenedor. |
| unpause  | Despausar todos los procesos dentro de uno o más contenedores. |
| update   | Actualizar la configuración de uno o más contenedores. |
| wait     | Bloquear hasta que uno o más contenedores se detengan, luego imprimir sus códigos de salida. |

##### Alternativas a Comandos Comunes

El comando `docker container` puede ser considerado una alternativa a ciertos comandos de Docker. A continuación se presentan algunas equivalencias:

| Opción 1                | Opción 2         |
|:-----------------------:|:----------------:|
| docker container ls     | docker ps        |
| docker container ls -a  | docker ps -a     |

Estas alternativas pueden simplificar la administración de contenedores al utilizar un conjunto coherente de comandos bajo `docker container`.

#### Docker --help

En caso de necesitar ayuda para saber qué hace un comando, se agrega el **--help**. Esto proporciona una descripción detallada del comando, sus opciones y uso.

##### Ejemplo de Uso del Comando `docker container ls --help`

```bash
[XXXX@XXX ~]# docker container ls --help

Usage:  docker container ls [OPTIONS]

List containers

Aliases:
  ls, ps, list

Options:
  -a, --all             Show all containers (default shows just running)
  -f, --filter filter   Filter output based on conditions provided
      --format string   Pretty-print containers using a Go template
  -n, --last int        Show n last created containers (includes all states) (default -1)
  -l, --latest          Show the latest created container (includes all states)
      --no-trunc        Don't truncate output
  -q, --quiet           Only display numeric IDs
  -s, --size            Display total file sizes
```

##### Ejemplo de Uso del Comando `docker image ls --help`

```bash
[XXXX@XXX ~]# docker image ls --help

Usage:  docker image ls [OPTIONS]

List images

Aliases:
  ls, images

Options:
  -a, --all             Show all images (default hides intermediate images)
  --digests             Show digests
  -f, --filter filter   Filter output based on conditions provided
      --format string   Pretty-print images using a Go template
      --no-trunc        Don't truncate output
  -q, --quiet           Only show numeric IDs
```

##### Ejemplo de Uso del Comando `docker run --help`

```bash
[XXXX@XXX ~]# docker run --help

Usage:  docker run [OPTIONS] IMAGE [COMMAND] [ARG...]

Run a command in a new container

Options:
  -d, --detach                         Run container in background and print container ID
      --name string                    Assign a name to the container
  -e, --env list                       Set environment variables
  -p, --publish list                   Publish a container's port(s) to the host
  -v, --volume list                    Bind mount a volume
      --rm                             Automatically remove the container when it exits
      --network string                 Connect a container to a network
  -h, --help                           Print usage
```

El comando `--help` es esencial para familiarizarse con las diversas opciones y parámetros disponibles para cualquier comando de Docker, permitiendo así un uso más eficiente y efectivo de las capacidades de Docker.

#### Docker Info

El comando `docker info` entrega múltiples datos sobre el estado y configuración del entorno Docker.

##### Ejemplo de Uso

**Docker info:** Entrega múltiples datos (Espacio, características, etc.), entre los cuales se destacan la cantidad de contenedores e imágenes y el estado de estos.

```bash
docker info
```

#### Docker Version

El comando `docker --version` sirve para conocer la versión de Docker instalada en la máquina.

##### Ejemplo de Uso

**Docker --version:** Sirve para saber qué versión de Docker se tiene instalada actualmente en la máquina.

```bash
docker --version
```

#### Docker Run

El comando `docker run` sirve para crear y ejecutar nuevos contenedores.

##### Ejemplo de Uso

**Docker run:** Cada vez que se ejecuta este comando, crea un nuevo contenedor, no recicla contenedores ejecutados previamente.

```bash
docker run [OPTIONS] IMAGE [COMMAND] [ARG...]
```

### Comandos Docker Image

#### Buscar Imagen Docker por CMD

Con este comando se buscará y entregará una lista de imágenes que se encuentran en el Docker Hub.

##### Ejemplo de Uso

```bash
docker search NombreBuscar
```

> Retorna como máximo 25 resultados.

##### Opciones del Comando `docker search`

| Opción | Descripción |
|:------:|:------------|
| --limit | Limitar el número de resultados (predeterminado: 25) |
| --filter | Filtrar resultados en base a criterios específicos (stars, is-official, is-automated) |

##### Ejemplos de Uso de Opciones

**Limitar el número de resultados a 10:**

```bash
docker search --limit 10 NombreBuscar
```

**Filtrar resultados por imágenes oficiales:**

```bash
docker search --filter "is-official=true" NombreBuscar
```

**Filtrar resultados por número de estrellas (ej. mínimo 3 estrellas):**

```bash
docker search --filter "stars=3" NombreBuscar
```

#### Descargar Imagen

Para descargar una imagen del Docker Hub al entorno local, se utiliza el siguiente comando.

##### Ejemplo de Uso

```bash
docker pull NombreImagen
```

##### Opciones del Comando `docker pull`

| Opción | Descripción |
|:------:|:------------|
| --all-tags | Descargar todas las versiones (tags) de la imagen |
| --platform | Especificar la plataforma para la que se debe descargar la imagen (ej. linux/amd64, linux/arm64) |

##### Ejemplos de Uso de Opciones

**Descargar todas las versiones (tags) de una imagen:**

```bash
docker pull --all-tags NombreImagen
```

**Especificar la plataforma al descargar una imagen:**

```bash
docker pull --platform linux/amd64 NombreImagen
```

#### Ver Imágenes en Repositorio Local

Para ver las imágenes descargadas y almacenadas en el entorno local, se utiliza el siguiente comando.

##### Ejemplo de Uso

```bash
docker images
```

##### Opciones del Comando `docker images`

| Opción    | Descripción |
|:---------:|:------------|
| -a, --all | Mostrar todas las imágenes, incluyendo las intermedias |
| --digests | Mostrar los digests de las imágenes |
| -f, --filter | Filtrar la salida en función de condiciones proporcionadas |
| --format  | Formatear la salida usando una plantilla de Go |
| --no-trunc | No truncar la salida de la imagen |
| -q, --quiet | Mostrar solo los IDs numéricos de las imágenes |

##### Ejemplos de Uso de Opciones

**Mostrar todas las imágenes, incluyendo las intermedias:**

```bash
docker images --all
```

**Filtrar las imágenes por una condición específica (ej. mostrar solo imágenes de un repositorio específico):**

```bash
docker images --filter "reference=NombreImagen:*"
```

**Formatear la salida para mostrar solo el nombre y la etiqueta de la imagen:**

```bash
docker images --format "{{.Repository}}:{{.Tag}}"
```

**Mostrar solo los IDs numéricos de las imágenes:**

```bash
docker images --quiet
```

#### Filtrar Imágenes

Para aplicar filtros a la lista de imágenes en el repositorio local, se utiliza el siguiente comando. Este comando funciona de manera similar a cómo se filtran los contenedores.

##### Ejemplo de Uso

```bash
docker images -f "filter=valor"
```

##### Descripción del Comando

El comando `docker images -f` permite aplicar filtros para mostrar solo las imágenes que coinciden con los criterios especificados. Los filtros se pueden basar en atributos como el nombre de la imagen, la etiqueta, la fecha de creación, etc.

##### Opciones del Comando `docker images -f`

| Opción | Descripción |
|:------:|:------------|
| -f, --filter | Aplicar un filtro para mostrar solo las imágenes que coinciden con el criterio especificado |

##### Ejemplos de Uso

**Filtrar imágenes por nombre:**

```bash
docker images -f "reference=nombre_imagen"
```

**Filtrar imágenes basadas en la etiqueta:**

```bash
docker images -f "label=etiqueta=valor"
```

**Filtrar imágenes por fecha de creación:**

```bash
docker images -f "before=fecha"
```

**Filtrar imágenes con una etiqueta específica:**

```bash
docker images -f "dangling=true"
```

##### Notas

- Asegúrate de reemplazar `"filter=valor"` con el filtro y valor adecuados según tus necesidades.
- Puedes combinar varios filtros para refinar aún más los resultados.

El comando `docker images -f` es útil para encontrar imágenes específicas en un repositorio local cuando se manejan muchas imágenes o cuando se requiere una búsqueda más precisa.

#### Eliminar una Imagen

Para eliminar una imagen que se encuentra en el repositorio local, se utiliza el siguiente comando:

```bash
docker rmi ID/Nombre_Imagen
```

##### Descripción del Comando

El comando `docker rmi` se usa para eliminar una o más imágenes del repositorio local de Docker. La eliminación se realiza utilizando el ID o el nombre de la imagen.

##### Opciones del Comando `docker rmi`

| Opción  | Descripción |
|:-------:|:------------|
| `ID/Nombre_Imagen` | El ID o nombre de la imagen que deseas eliminar. Puedes usar el ID de la imagen, el nombre de la imagen, o una combinación de ambos. |

##### Ejemplos de Uso

**Eliminar una imagen por ID:**

```bash
docker rmi abc1234defgh
```

**Eliminar una imagen por nombre:**

```bash
docker rmi my_image:latest
```

**Eliminar varias imágenes al mismo tiempo:**

```bash
docker rmi image1 image2 image3
```

##### Importante

- **Restricción con Contenedores:** No es posible eliminar una imagen si existe un contenedor que la está utilizando. Si un contenedor se ha creado a partir de una imagen, Docker no permitirá eliminar esa imagen hasta que el contenedor asociado sea eliminado primero.
  
  Para eliminar una imagen que está en uso, primero debes eliminar el contenedor que está utilizando la imagen. Puedes hacerlo con el siguiente comando para eliminar el contenedor:

  ```bash
  docker rm ID/Nombre_Contenedor
  ```

- **Eliminar Imagen Forzadamente:** Si deseas eliminar una imagen que está en uso, puedes forzar la eliminación utilizando la bandera -f. Esto también eliminará los contenedores que están utilizando la imagen.

  **Comando para eliminar una imagen forzadamente:**

  ```bash
  docker rmi -f ID/Nombre_Imagen
  ```

##### Notas

- **Comprobación de Imágenes en Uso:** Puedes verificar qué contenedores están utilizando una imagen específica utilizando el comando `docker ps -a` para listar todos los contenedores, y luego buscar los que usan la imagen que deseas eliminar.
  
- **Eliminar Contenedores Antes de la Imagen:** Es una buena práctica asegurarse de que no hay contenedores en ejecución o detenidos que dependan de la imagen que deseas eliminar. Puedes detener y eliminar todos los contenedores asociados antes de eliminar la imagen.

El comando `docker rmi` es útil para limpiar imágenes no utilizadas o para liberar espacio en el disco al eliminar imágenes obsoletas.

#### Borrar Todas las Imágenes

Para eliminar todas las imágenes almacenadas en el repositorio local, se utiliza el siguiente comando:

```bash
docker rmi $(docker images -q)
```

##### Descripción del Comando

El comando `docker rmi $(docker images -q)` elimina todas las imágenes locales en el repositorio de Docker. Se compone de dos partes:

1. `docker images -q`: Este comando lista todos los IDs de las imágenes en el repositorio local.
2. `docker rmi $(...)`: El comando `docker rmi` elimina las imágenes cuyos IDs son proporcionados como argumento. Al usar `$(docker images -q)`, se pasan todos los IDs de imágenes listadas por el comando anterior.

##### Detalles del Comando

- **`docker images -q`:** Lista los IDs de todas las imágenes en el repositorio local sin información adicional. La opción `-q` (quiet) produce una salida limpia con solo los IDs de las imágenes.

- **`docker rmi`:** Elimina las imágenes especificadas. Cuando se le pasa una lista de IDs de imágenes, elimina todas las imágenes correspondientes.

##### Ejemplo de Uso

**Eliminar todas las imágenes en el repositorio local:**

```bash
docker rmi $(docker images -q)
```

##### Importante

- **Contenedores en Uso:** Antes de ejecutar este comando, asegúrate de que no haya contenedores en ejecución que estén utilizando las imágenes que deseas eliminar. Si existen contenedores utilizando estas imágenes, Docker no permitirá su eliminación.

  Para detener y eliminar todos los contenedores que pueden estar utilizando las imágenes, usa los siguientes comandos:

  **Detener todos los contenedores:**

  ```bash
  docker stop $(docker ps -q)
  ```

  **Eliminar todos los contenedores:**

  ```bash
  docker rm $(docker ps -a -q)
  ```

- **Forzar Eliminación:** Si deseas eliminar imágenes que están asociadas a contenedores, puedes forzar la eliminación utilizando la bandera -f con el comando `docker rmi`.

  **Eliminar todas las imágenes forzadamente:**

  ```bash
  docker rmi -f $(docker images -q)
  ```

  Nota: Forzar la eliminación eliminará también los contenedores que están en uso y asociados a esas imágenes.

##### Precauciones

- **Espacio en Disco:** Asegúrate de que realmente deseas eliminar todas las imágenes, ya que esto puede afectar los contenedores que dependen de esas imágenes y puede liberar espacio en disco, pero también eliminará imágenes que podrían ser necesarias para otros proyectos.

- **Recreación de Imágenes:** Si eliminas todas las imágenes, tendrás que volver a descargar o construir imágenes cuando las necesites nuevamente, lo que podría consumir tiempo y recursos adicionales.

Este comando es útil para limpiar un entorno Docker de todas las imágenes no deseadas, especialmente en entornos de desarrollo o prueba donde se crean y eliminan muchas imágenes regularmente.

#### Historial de Cambios de una Imagen

Para ver el historial de los cambios que ha sufrido una imagen a lo largo de su proceso de construcción, se utiliza el siguiente comando:

```bash
docker image history Nombre_Imagen
```

##### Descripción del Comando

El comando `docker image history Nombre_Imagen` muestra una lista detallada de las capas y los cambios aplicados a una imagen desde su construcción inicial hasta su estado actual. Esto incluye información sobre cada capa de la imagen, como la fecha de creación, el tamaño y las instrucciones de construcción.

##### Detalles del Comando

- **`docker image history`:** Este comando muestra el historial de una imagen específica. Está diseñado para proporcionar una visión detallada de cómo se construyó la imagen, lo que incluye cada instrucción ejecutada durante el proceso de construcción.

- **`Nombre_Imagen`:** Especifica el nombre de la imagen cuyo historial deseas consultar. Puede ser un nombre de imagen completo, incluyendo la etiqueta (por ejemplo, `ubuntu:latest`), o solo el nombre de la imagen si hay una única etiqueta asociada.

##### Ejemplo de Uso

**Ver el historial de cambios para una imagen específica:**

```bash
docker image history Nombre_Imagen
```

##### Salida del Comando

La salida del comando `docker image history` incluye las siguientes columnas:

- **`IMAGE`:** ID de la capa de la imagen.
- **`CREATED`:** Fecha y hora en que se creó la capa de la imagen.
- **`CREATED BY`:** La instrucción que creó la capa (por ejemplo, un comando de Dockerfile).
- **`SIZE`:** Tamaño de la capa.
- **`COMMENT`:** Comentarios opcionales sobre la capa (si se han agregado).

##### Ejemplo de Salida

```plaintext
IMAGE               CREATED             CREATED BY                                      SIZE                COMMENT
<sha256:id>         2 weeks ago         /bin/sh -c apt-get update && apt-get install...   250MB
<sha256:id>         3 weeks ago         /bin/sh -c apt-get install -y python3-pip         50MB
<sha256:id>         4 weeks ago         /bin/sh -c apt-get install -y python3             40MB
<sha256:id>         1 month ago         /bin/sh -c mkdir /app                              10MB
<sha256:id>         1 month ago         /bin/sh -c FROM ubuntu:20.04                       200MB
```

##### Uso Típico

- **Depuración:** Puedes usar el historial de la imagen para depurar problemas en la construcción de la imagen o para entender cómo se configuró una imagen específica.
- **Optimización:** Analizar el historial puede ayudarte a optimizar el Dockerfile eliminando pasos innecesarios o combinando comandos para reducir el tamaño de la imagen.
- **Auditoría:** Es útil para auditar las capas y los cambios realizados en la imagen a lo largo del tiempo, asegurando que se cumplan las políticas de seguridad y mantenimiento.

##### Nota

- **Imágenes Intermedias:** El historial mostrará tanto las imágenes intermedias como las finales. Las imágenes intermedias son capas que se crean durante el proceso de construcción y no se usan directamente en el contenedor en ejecución.
- **Cambios Dinámicos:** Los cambios mostrados reflejan las instrucciones del Dockerfile y cualquier modificación realizada durante el proceso de construcción, lo que incluye la adición de archivos, instalaciones de paquetes y configuraciones.

Este comando es una herramienta poderosa para obtener información detallada sobre la evolución de una imagen Docker a lo largo del tiempo y puede ser muy útil para desarrolladores y administradores de sistemas que trabajan con Docker.

## Comandos Contenedores

### Crear un Contenedor

Para crear un contenedor a partir de una imagen, se utiliza el siguiente comando:

```bash
docker run nombre-Contenedor
```

#### Descripción del Comando

El comando `docker run` se emplea para crear y ejecutar un nuevo contenedor desde una imagen especificada. Cada vez que se ejecuta este comando, se genera un nuevo contenedor, incluso si ya existe un contenedor basado en la misma imagen. El comando también descarga la imagen desde Docker Hub si no está disponible localmente.

#### Ejemplo de Uso

**Crear un contenedor a partir de una imagen específica:**

```bash
docker run hello-world
```

**Descripción:**

- **`hello-world`**: Es una imagen de prueba que confirma que Docker está funcionando correctamente. Si la imagen no está disponible localmente, Docker la descargará desde Docker Hub.

**Docker Hub** es un registro en línea de imágenes Docker. Si la imagen solicitada no está en el repositorio local, Docker la descargará desde Docker Hub para crear el contenedor.

---

#### Crear un Contenedor con Nombre

Para asignar un nombre específico a un contenedor al momento de su creación, se utiliza la opción `--name`:

```bash
docker run -it --name ubuntu_personal ubuntu bash
```

**Descripción:**

- **`-it`**: Combina las opciones `-i` (interactivo) y -t (terminal), permitiendo la interacción con el contenedor.
- **`--name ubuntu_personal`**: Asigna el nombre `ubuntu_personal` al contenedor.
- **`ubuntu`**: Es la imagen desde la cual se creará el contenedor.
- **`bash`**: Ejecuta el shell `bash` dentro del contenedor.

**Uso:**
Este comando inicia un contenedor basado en la imagen `ubuntu`, lo nombra `ubuntu_personal`, y abre una terminal interactiva en el contenedor.

---

#### Crear un Contenedor Interactivo

Para crear un contenedor que permita la interacción con el usuario a través de una terminal, se utiliza el comando con las opciones -it:

```bash
docker run -it ubuntu
```

**Descripción:**

- **`-it`**: Combina `-i` (interactivo) y -t (terminal) para permitir la interacción con la terminal del contenedor.
- **`ubuntu`**: Es la imagen base. La imagen de Ubuntu proporciona un entorno de línea de comandos interactivo.

**Uso:**
Este comando inicia un contenedor interactivo basado en la imagen `ubuntu`, permitiendo la entrada de comandos directamente en la terminal del contenedor.

**Nota:**
La imagen `ubuntu` proporciona una versión mínima de Ubuntu para la interacción en la línea de comandos.

---

#### Crear un Contenedor en Segundo Plano (Background)

Para ejecutar un contenedor en segundo plano, sin mantener la ventana de comandos abierta, se utiliza la opción -d:

```bash
docker run -d nginx
```

**Descripción:**

- **-d**: Ejecuta el contenedor en modo "detached" (en segundo plano).
- **`nginx`**: Es la imagen desde la cual se creará el contenedor.

**Uso:**
Este comando inicia un contenedor basado en la imagen `nginx` en segundo plano. La opción -d permite que el contenedor se ejecute sin necesidad de mantener una ventana de terminal abierta para interactuar con él.

**Nota:**
Un contenedor en modo detached no se puede eliminar automáticamente cuando se detiene. La opción `--rm` no es compatible con -d.

---

#### Crear un Contenedor con Eliminación Automática

Para eliminar automáticamente un contenedor una vez que haya terminado su ejecución, se utiliza la opción `--rm`:

```bash
docker run -it --rm --name Nombre_Contenedor Nombre_imagen
```

**Descripción:**

- **`-it`**: Permite la interacción con la terminal del contenedor.
- **`--rm`**: Elimina el contenedor automáticamente después de que se detiene.
- **`--name Nombre_Contenedor`**: Asigna el nombre `Nombre_Contenedor` al contenedor.
- **`Nombre_imagen`**: Es la imagen desde la cual se creará el contenedor.

**Uso:**
Este comando crea un contenedor interactivo basado en `Nombre_imagen`, le asigna el nombre `Nombre_Contenedor`, y se elimina automáticamente cuando el contenedor se detiene.

**Nota:**
El contenedor se eliminará tan pronto como se cierre la sesión interactiva.

---

Estos comandos te permiten crear y gestionar contenedores Docker de manera flexible, ajustando su comportamiento según tus necesidades, ya sea para pruebas, desarrollo o producción.

### Ingresar a un Contenedor en Modo Interactivo

Para ingresar a un contenedor que ya ha sido creado previamente y que está en estado detenido, utilizando el modo interactivo, puedes usar el siguiente comando:

```bash
docker start -i ID_Contenedor
```

#### Descripción del Comando

- **`docker start`**: Inicia un contenedor que está detenido.
- **`-i`**: Proporciona una sesión interactiva con el contenedor.
- **`ID_Contenedor`**: Es el ID del contenedor que deseas iniciar y al que quieres acceder.

#### Uso

Este comando inicia un contenedor previamente creado y detenido y proporciona una terminal interactiva para interactuar con él. Si deseas trabajar con un contenedor que ha sido previamente configurado y está detenido, este comando evita la creación de un nuevo contenedor y te permite retomar la sesión del contenedor existente.

**Nota:**
Cuando un contenedor se detiene, no se elimina automáticamente; debes iniciarlo nuevamente para acceder a él.

---

### Salir de un Contenedor sin Detener la Ejecución

Para salir de un contenedor sin detener su ejecución, puedes usar la siguiente combinación de teclas:

```plaintext
Ctrl+P+Q
```

#### Descripción

- **`Ctrl+P`** y **`Ctrl+Q`**: Esta combinación de teclas permite desvincular la terminal del contenedor, dejando el contenedor en ejecución en segundo plano. Esto es útil si necesitas cerrar tu sesión interactiva sin detener el contenedor.

**Uso:**
Presiona `Ctrl+P` seguido de `Ctrl+Q` para regresar a tu terminal local mientras el contenedor sigue ejecutándose en segundo plano.

---

### Detener un Contenedor

Para detener un contenedor que se encuentra en ejecución, utiliza el siguiente comando:

```bash
docker stop ID_Contenedor
```

#### Descripción del Comando

- **`docker stop`**: Detiene la ejecución de un contenedor.
- **`ID_Contenedor`**: Es el ID del contenedor que deseas detener.

#### Uso

Este comando envía una señal de parada al contenedor especificado, permitiéndole cerrar de manera controlada. Es útil cuando necesitas finalizar el contenedor de manera ordenada.

---

### Detener Todos los Contenedores

Para detener todos los contenedores que están actualmente en ejecución, usa el siguiente comando:

```bash
docker stop $(docker ps -q)
```

#### Descripción del Comando

- **`docker stop`**: Detiene los contenedores especificados.
- **`$(docker ps -q)`**: Obtiene los IDs de todos los contenedores en ejecución.

#### Uso

Este comando primero obtiene una lista de todos los contenedores en ejecución (`docker ps -q` devuelve solo los IDs de los contenedores) y luego pasa esa lista al comando `docker stop`, deteniendo todos los contenedores.

**Nota:**
Este comando detiene todos los contenedores activos en tu sistema. Si quieres detener todos los contenedores, incluidos los que están detenidos, usa `docker ps -a -q` en lugar de `docker ps -q`.

### Ver Contenedores en Ejecución

Para ver los contenedores que están actualmente en ejecución, puedes usar una de las siguientes opciones:

```bash
# Primera Opción
docker container ls

# Segunda Opción
docker ps
```

#### Descripción de los Comandos

- **`docker container ls`**: Muestra una lista de todos los contenedores que están en ejecución.
- **`docker ps`**: Es un alias de `docker container ls` y realiza la misma función.

#### Uso

Estos comandos te proporcionan una lista de contenedores que están activos en tu sistema. La salida incluye detalles como el ID del contenedor, la imagen utilizada, el comando que se está ejecutando, el estado, y más.

**Nota:**
Ambos comandos son equivalentes y puedes usar cualquiera de ellos según tu preferencia.

---

### Ver Contenedores Detenidos

Para ver los contenedores que están creados pero detenidos, usa el siguiente comando:

```bash
docker ps -a
```

#### Descripción del Comando

- **`docker ps -a`**: Muestra todos los contenedores, incluyendo los que están detenidos y los que están en ejecución.

#### Uso

Este comando proporciona una lista completa de todos los contenedores, independientemente de su estado. Los contenedores detenidos se muestran junto con los que están actualmente en ejecución.

**Nota:**
Los contenedores no se eliminan automáticamente al detenerse; permanecen en estado detenido hasta que se eliminen manualmente.

---

### Ver Último Contenedor Arrancado

Para visualizar el último contenedor que ha realizado una operación, usa:

```bash
docker ps -l
```

#### Descripción del Comando

- **`docker ps -l`**: Muestra el último contenedor que ha realizado alguna operación (ya sea que esté en ejecución o detenido).

#### Uso

Este comando es útil para identificar rápidamente el contenedor más reciente que ha sido creado o ejecutado. Proporciona información sobre el último contenedor en tu sistema.

---

### Ver Últimos Contenedores que se Han Ejecutado (Cantidad)

Para ver los últimos contenedores que han realizado alguna operación y especificar la cantidad de contenedores a mostrar, utiliza:

```bash
docker ps -n 4
```

#### Descripción del Comando

- **`docker ps -n 4`**: Muestra los últimos 4 contenedores que han realizado alguna operación. Puedes ajustar el número (4) según la cantidad deseada.

#### Uso

Este comando limita la salida a los contenedores más recientes, lo que facilita la visualización de los contenedores más relevantes que han sido creados o ejecutados recientemente.

**Nota:**
Puedes cambiar el número (4) por cualquier otro valor para mostrar una cantidad diferente de contenedores.

---

### Ver IDs de Contenedores

Para visualizar solamente los IDs de los contenedores, puedes usar una de las siguientes opciones:

```bash
# Opción 1
docker ps -a -q

# Opción 2
docker ps -aq
```

#### Descripción de los Comandos

- **`docker ps -a -q`**: Muestra solamente los IDs de todos los contenedores, independientemente de su estado (en ejecución o detenido).
- **`docker ps -aq`**: Es un alias de `docker ps -a -q` y realiza la misma función.

#### Uso

Estos comandos proporcionan una lista de IDs de contenedores que puedes usar en scripts o comandos para realizar operaciones automáticas sobre los contenedores.

---

### Ver Tamaño del Contenedor

Para ver el tamaño que ocupa un contenedor en el sistema, usa el siguiente comando. En el ejemplo se muestra cómo ver el tamaño de los últimos 3 contenedores:

```bash
docker ps -a -n 3 -s
```

#### Descripción del Comando

- **`docker ps -a -n 3 -s`**: Muestra todos los contenedores, incluyendo los que están detenidos, los últimos 3 contenedores en ejecución y sus tamaños.

#### Uso

Este comando proporciona información sobre el tamaño de los contenedores, lo que puede ser útil para gestionar el espacio en disco y verificar el impacto de los contenedores en tu sistema.

**Nota:**
El tamaño mostrado es el tamaño de la capa de imagen y los cambios realizados en el contenedor. La opción -s muestra detalles del tamaño de cada contenedor.

### Filtrar Lista de Contenedores (`--filter`, -f)

El comando para filtrar la lista de contenedores permite agregar una o más opciones de filtrado para personalizar la búsqueda de contenedores. Esto se hace mediante el parámetro `--filter` o su forma corta -f. A continuación, se detallan las opciones disponibles para aplicar filtros:

#### Opciones de Filtros

| Filtro         | Descripción                                                                                                    |
|----------------|----------------------------------------------------------------------------------------------------------------|
| **`id`**       | ID del contenedor.                                                                                             |
| **`name`**     | Nombre del contenedor.                                                                                        |
| **`label`**    | Una cadena arbitraria que representa una llave o un par llave-valor. Expresado como `<key>` o `<key>=<value>`.|
| **`exited`**   | Un número entero que representa el código de salida del contenedor. Solo es útil con `--all`.                   |
| **`status`**   | Uno de `created`, `restarting`, `running`, `removing`, `paused`, `exited`, o `dead`.                           |
| **`ancestor`** | Filtra los contenedores que comparten una determinada imagen como ancestros. Expresado como `<image-name>[:<tag>]`, `<image id>`, o `<image@digest>`.|
| **`before`** o **`since`** | Filtra los contenedores creados antes o después de una identificación o nombre de contenedor determinado.     |
| **`volume`**   | Filtros que funcionan con contenedores que han montado un volumen determinado o un soporte de fijación.         |
| **`network`**  | Filtros que funcionan con contenedores conectados a una red determinada.                                         |
| **`publish`** o **`expose`** | Filtra los contenedores que publican o exponen un puerto determinado. Expresado como `<port>[/<proto>]` o `<startport-endport>/[<proto>]`.|
| **`health`**   | Filtra los contenedores en función de su estado de salud. Uno de `starting`, `healthy`, `unhealthy` o `none`.  |
| **`isolation`**| Solo `daemon` de Windows. Uno de `default`, `process` o `hyperv`.                                              |
| **`is-task`**  | Filtra los contenedores que son una "tarea" para un servicio. Opción booleana (`true` o `false`).              |

Para obtener una descripción más detallada de cada filtro, revisa el [enlace a filtros de Docker](https://docs.docker.com/engine/reference/commandline/ps/#filtering).

#### Ejemplos de Uso

##### Filtrar por Nombre

Para filtrar la lista de contenedores por nombre, usa el siguiente comando:

```bash
docker ps -a -f "name=XX"
```

**Descripción:**

- **`docker ps -a -f "name=XX"`**: Muestra todos los contenedores (incluidos los detenidos) que tienen un nombre que coincide con `XX`.

**Nota:**

- **`XX`** representa el nombre del contenedor que estás buscando. Puedes usar patrones o nombres parciales para realizar búsquedas más flexibles.

**Ejemplo:**

Si deseas buscar contenedores cuyo nombre contenga "web", podrías usar:

```bash
docker ps -a -f "name=web"
```

### Eliminar un Contenedor

Para eliminar un contenedor que se encuentra detenido, se pueden usar los siguientes comandos:

#### Opción 1: Eliminar por ID

```ps
docker rm ID_Contenedor
```

**Descripción:**

- **`docker rm ID_Contenedor`**: Elimina un contenedor especificado por su ID. Reemplaza `ID_Contenedor` con el ID real del contenedor que deseas eliminar.

#### Opción 2: Eliminar por Nombre

```ps
docker rm Nombre_Contenedor
```

**Descripción:**

- **`docker rm Nombre_Contenedor`**: Elimina un contenedor especificado por su nombre. Reemplaza `Nombre_Contenedor` con el nombre real del contenedor que deseas eliminar.

### Eliminar un Contenedor en Ejecución

Si necesitas eliminar un contenedor que está en ejecución, debes forzar la eliminación utilizando el siguiente comando:

```ps
docker rm ID_Contenedor/Nombre_Contenedor -f
```

**Descripción:**

- **`docker rm ID_Contenedor/Nombre_Contenedor -f`**: Elimina un contenedor que está en ejecución forzando su eliminación. Reemplaza `ID_Contenedor` o `Nombre_Contenedor` con el ID o nombre del contenedor que deseas eliminar.

**Nota:**

- Forzar la eliminación de un contenedor en ejecución detendrá el contenedor de inmediato.

### Eliminar Todos los Contenedores

Para eliminar todos los contenedores que has creado, utiliza el siguiente comando en PowerShell (Windows):

```ps
docker rm $(docker ps -a -q)
```

**Descripción:**

- **`docker rm $(docker ps -a -q)`**: Elimina todos los contenedores en el sistema. Primero, `docker ps -a -q` lista todos los IDs de los contenedores (independientemente de su estado), y luego `docker rm` los elimina.

**Nota:**

- Si tienes contenedores en ejecución, debes usar la opción -f para forzar la eliminación de los contenedores o detener la ejecución primero.

**Ejemplo de Forzar Eliminación de Todos los Contenedores:**

```ps
docker rm -f $(docker ps -a -q)
```

Este comando detendrá y eliminará todos los contenedores en ejecución y detenidos.

### Historial Cambios Contenedor

Para conocer los cambios, instalaciones o modificaciones que ha sufrido un contenedor, puedes utilizar los siguientes comandos. Estos comandos mostrarán los cambios en los archivos y directorios dentro del contenedor.

#### Opción 1: `docker diff`

```ps
docker diff Nombre_Contenedor
```

**Descripción:**

- **`docker diff Nombre_Contenedor`**: Muestra los cambios realizados en los archivos y directorios dentro del contenedor especificado por `Nombre_Contenedor`. Reemplaza `Nombre_Contenedor` con el nombre real del contenedor que deseas inspeccionar.

#### Opción 2: `docker container diff`

```ps
docker container diff Nombre_Contenedor
```

**Descripción:**

- **`docker container diff Nombre_Contenedor`**: Similar al comando `docker diff`, pero usa la forma extendida del comando, `docker container diff`. Reemplaza `Nombre_Contenedor` con el nombre real del contenedor que deseas inspeccionar.

**Interpretación de los Resultados:**

Los cambios se muestran con una letra al principio, que indica el tipo de modificación realizada:

- **`A` (Adición)**: Indica que un archivo o directorio nuevo ha sido agregado.
- **`C` (Modificación)**: Indica que un archivo o directorio existente ha sido modificado.
- **`D` (Eliminado)**: Indica que un archivo o directorio ha sido eliminado.

**Ejemplo:**

Si ejecutas el comando:

```ps
docker diff my_container
```

Podrías obtener una salida como esta:

```bash
A /newfile.txt
C /existingfile.txt
D /oldfile.txt
```

Esto significa que:

- Se ha añadido el archivo `/newfile.txt`.
- Se ha modificado el archivo `/existingfile.txt`.
- Se ha eliminado el archivo `/oldfile.txt`.

**Nota:**

Estos comandos son útiles para auditar los cambios realizados en un contenedor, especialmente cuando se desean verificar las modificaciones realizadas durante el tiempo de ejecución del contenedor.

## Puertos Docker

Los contenedores Docker deben ser accesibles desde el exterior para poder interactuar con ellos, como en el caso de una API o un servidor web. Por defecto, los puertos de los contenedores son privados y no accesibles desde fuera del contenedor. Es necesario mapear estos puertos con puertos del host que aloja el contenedor para hacerlos accesibles.

### Convertir Puertos en Públicos

Para exponer los puertos de un contenedor y hacerlos accesibles desde el exterior, se utiliza la opción `-P` (mayúscula) al iniciar el contenedor. Esto asignará automáticamente puertos del host al contenedor.

```ps
docker run -d -P nombre_imagen
```

**Descripción:**

- **-d**: Ejecuta el contenedor en segundo plano (modo detach).
- **`-P`**: Expone todos los puertos del contenedor que están definidos en la configuración de la imagen, asignando puertos aleatorios del host.

> **Nota:** La `P` debe ser mayúscula para que Docker asigne puertos aleatorios. Si se usa `-p` (minúscula), se necesita especificar el puerto manualmente.

#### Confirmar Puertos Públicos

Para verificar los puertos expuestos y sus asignaciones, utiliza el comando:

```ps
docker ps
```

Esto mostrará una columna llamada **PORTS**, que indica cómo están mapeados los puertos del contenedor al host.

**Ejemplo de columna PORTS:**

```bash
0.0.0.0:24312->80/tcp
```

**Explicación de la columna PORTS:**

- **`0.0.0.0`**: Indica que el puerto es accesible desde cualquier dirección IP del host. Puede cambiarse a una IP específica si el host tiene múltiples direcciones IP.
- **`24312`**: Es el puerto en el host que está mapeado con el puerto del contenedor.
- **`80/tcp`**: Es el puerto del contenedor.

> **Acceso al Contenedor:** Para acceder a un servicio en el contenedor, usa la URL `localhost:24312` en el navegador si el contenedor está ejecutando un servidor web como Apache o Nginx.

### Crear un Contenedor con un Puerto Específico

En lugar de asignar puertos aleatorios, puedes especificar un puerto concreto en el host para mapearlo al puerto del contenedor utilizando la opción `-p` (minúscula).

```ps
docker run -d -p 8080:80 Nombre_Imagen
```

**Descripción:**

- **`-p 8080:80`**: Mapea el puerto `80` del contenedor al puerto `8080` del host. El formato es `host_port:container_port`.
- **-d**: Ejecuta el contenedor en segundo plano.

#### Ejemplo con Nombre Personalizado

Puedes agregar un nombre personalizado al contenedor con la opción `--name`:

```ps
docker run -d --name Nombre_personalizado -p 8080:80 Nombre_Imagen
```

**Descripción:**

- **`--name Nombre_personalizado`**: Asigna un nombre específico al contenedor.

**Notas Importantes:**

- Con la opción `-P`, Docker asignará automáticamente puertos aleatorios del host.
- Con la opción `-p`, puedes especificar el puerto del host al que deseas mapear el puerto del contenedor.

---

Estos comandos te permitirán gestionar la accesibilidad de los contenedores Docker a través de puertos, ya sea exponiéndolos automáticamente o asignando puertos específicos del host.

## Redes Docker

Docker utiliza redes para permitir la comunicación entre contenedores y entre contenedores y el host. Por defecto, Docker crea y maneja varias redes, pero también puedes crear redes personalizadas para cumplir con requisitos específicos.

### Redes Predeterminadas

Por defecto, Docker proporciona tres redes predefinidas:

- **Bridge:** Es la red predeterminada para los contenedores si no se especifica otra. Permite la comunicación entre contenedores en la misma red.
- **Host:** Los contenedores en esta red interactúan directamente con el host y no pueden comunicarse entre ellos. Se utiliza para contenedores aislados.
- **None:** El contenedor no tiene acceso a la red. Su driver es **null**.

La columna **SCOPE** en la lista de redes indica si la red es local o está conectada a otros equipos.

### Ver Lista de Redes en Docker

Para listar todas las redes disponibles en Docker:

```ps
docker network ls
```

### Obtener Dirección IP de un Contenedor

Para obtener la dirección IP de un contenedor, puedes usar el comando `docker inspect` con una plantilla de Golang para formatear la salida:

```ps
docker inspect --format='{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ID/Nombre_Contenedor
```

> **Nota:** La función de ping para verificar la conexión de red no está disponible en Windows ni en macOS.

Otra opción para obtener la dirección IP es utilizando herramientas de búsqueda en el output de `docker inspect`:

```ps
# Estructura
docker inspect Nombre/ID_Contenedor | FindStr/grep Objeto_Buscar

# Windows
docker inspect Nombre/ID_Contenedor | FindStr IPAd

# Linux
docker inspect Nombre/ID_Contenedor | grep IPAd
```

Para guardar la información de una inspección en un archivo:

```ps
docker inspect Nombre/ID_Contenedor > Nombre_Archivo.txt
```

### Obtener Información Detallada de una Red

Para obtener información detallada sobre una red específica, incluyendo los contenedores conectados a ella:

```ps
docker network inspect Nombre_red
```

> **Nota:** Puedes obtener el nombre de la red con el comando `docker network ls`.

### Crear una Nueva Red

Para crear una nueva red en Docker:

```ps
docker network create Nombre_Red
```

> La red creada por defecto es del tipo **bridge**. Puedes especificar un tipo diferente con la opción `--driver`.

#### Crear Red con Rango de Subnet

Para especificar un rango de subnet al crear una red:

```ps
docker network create --subnet=192.168.0.0/16 Nombre_Red
```

### Asociar un Contenedor a una Red

Para ejecutar un contenedor y asociarlo a una red existente:

```ps
docker run -it --name Nombre_Contenedor --network Nombre_Red Imagen_Contenedor
```

> El parámetro **--network** especifica la red a la que se asociará el contenedor.

Para conectar un contenedor que ya está en ejecución a una red:

```ps
docker network connect Nombre_Red Nombre_Contenedor
```

> Un contenedor puede estar conectado a múltiples redes.

Para desconectar un contenedor de una red:

```ps
docker network disconnect Nombre_Red Nombre_Contenedor
```

### Enlazar Contenedores

Se pueden enlazar contenedores de dos maneras:

#### Bridge (Red por Defecto)

Puedes enlazar contenedores utilizando la opción `--link`, aunque esta opción está en desuso y no se recomienda para redes personalizadas. Se usa principalmente en la red bridge por defecto.

**Ejemplo:**

Primero, ejecuta un contenedor con un entorno interactivo:

```ps
docker run -it --rm --name Nombre_contenedor Nombre_Imagen
```

Para saber la IP del contenedor, usa:

```sh
[XXXX@XXX ~]# cat /etc/hosts
```

Luego, enlaza el contenedor con otro:

```ps
docker run -it --rm --name Nombre_contenedor --link Nombre_contenedor_destino:alias_contenedor_destino Nombre_Imagen
```

> **Notas:**
>
> - `--rm` elimina el contenedor automáticamente al finalizar.
> - `--name` debe ser usado para los contenedores que deseas enlazar.
> - El enlace no es necesario si los contenedores están en la misma red personalizada.
> - Los enlaces son unidireccionales en este modo.

#### Red Personalizada

Para agregar un contenedor a una red personalizada:

```ps
docker run -d --name Nombre_Contenedor --rm --network Nombre_Red Nombre_Imagen
```

> El **--rm** es opcional, evita la acumulación de contenedores detenidos.

Para acceder al contenedor:

```ps
docker exec -it Nombre_Contenedor bash
```

### Borrar una Red

Para eliminar una red ya creada:

```ps
docker network rm Nombre_Red
```

> No es posible borrar una red que tiene contenedores asociados.

---

Estos comandos y procedimientos te permitirán gestionar redes Docker para facilitar la comunicación entre contenedores y con el host.

## Volúmenes en Docker

Los volúmenes en Docker son fundamentales para gestionar la persistencia de datos y facilitar el intercambio de información entre contenedores y el host. A continuación, se detallan las operaciones y conceptos clave relacionados con los volúmenes en Docker:

### ¿Por qué usar Volúmenes?

- **Persistencia de Datos:** Los volúmenes permiten que los datos persistan más allá de la vida útil de un contenedor.
- **Facilidad de Respaldo y Migración:** Facilitan el respaldo y la migración de datos.
- **Compatibilidad:** Funcionan tanto en sistemas Windows como Linux.
- **Compartición entre Contenedores:** Un volumen puede estar conectado a varios contenedores simultáneamente.
- **Creación Inicial desde un Contenedor:** La información puede ser añadida a un volumen mediante un contenedor antes de que un usuario acceda a él.
- **Administración con Docker:** Los volúmenes se administran directamente con Docker y pueden ser gestionados de forma remota.

### Crear un Volumen

Puedes crear un volumen al momento de ejecutar un contenedor:

```ps
docker run -it -v Carpeta_Volumen --name Nombre_Contenedor Nombre_Imagen bash
```

> **Nota:** `Carpeta_Volumen` es la ubicación dentro del contenedor donde se almacenarán los datos. El volumen se crea en la ubicación predeterminada de Docker, pero puede ser personalizado si es necesario.

### Listar Volúmenes

Para ver todos los volúmenes disponibles:

```ps
docker volume ls
```

> El comando muestra el driver y el nombre del volumen. Si no se especifica un nombre, Docker generará un nombre aleatorio.

### Obtener Información de un Volumen

Para obtener detalles sobre un volumen específico:

```ps
docker volume inspect ID/Nombre_Volumen
```

> Se proporciona información como la fecha de creación, el tipo de driver, el punto de montaje (la ubicación en el host donde se almacenan los datos), el nombre, entre otros detalles.

### Crear un Directorio Compartido (Carpeta)

Para compartir archivos o carpetas entre el host y los contenedores, puedes especificar la ruta al crear el contenedor:

```ps
docker run -it -v Direccion_Maquina_Host:Direccion_Contenedor --name Nombre_Contenedor Nombre_Imagen

# Ejemplo
docker run -it -v /root/carpeta1:/carpeta1 Nombre_Imagen
```

> **Nota:** Esto asocia un directorio del host con un directorio en el contenedor. Se muestra como "HostConfig/Binds" en los datos del contenedor y no se considera un volumen en Docker.

### Compartir un Volumen entre Contenedores

Para compartir un volumen entre dos contenedores:

1. Crea el primer contenedor con el volumen que deseas compartir:

   ```ps
   docker run -it -v /datos --name Nombre_Contenedor1 Nombre_Imagen bash
   ```

2. Crea el segundo contenedor y conéctalo al volumen del primer contenedor:

   ```ps
   docker run -it --name Nombre_Contenedor2 --volumes-from Nombre_Contenedor1 Nombre_Imagen bash
   ```

> **Nota:** No es posible conectar directamente a un volumen; debe haber un contenedor en ejecución que esté utilizando el volumen para poder compartirlo con otros contenedores.

### Crear Volumen de Forma Independiente

#### Nombre Personalizado

Para crear un volumen con un nombre personalizado:

```ps
docker volume create Nombre_Volume
```

Para usar el volumen al crear un contenedor:

```ps
docker run -it --name Nombre_Contenedor -v Nombre_Volume:Nombre_Directorio Nombre_Imagen bash
```

#### Permiso de Lectura

Para hacer que un contenedor solo pueda leer datos sin modificar el directorio, agrega `:ro` al nombre del directorio:

```ps
docker run -it --name Nombre_Contenedor -v Nombre_Volume:Nombre_Directorio:ro Nombre_Imagen bash
```

#### Uso en Windows

Para especificar un volumen en Windows, usa la ruta completa y cambia el separador de directorios:

```ps
docker run -it --name Nombre_Contenedor -v C:\\Users\\XXXX\\dir1:volumenDocker Nombre_Imagen bash
```

> **Nota:** En Windows, se debe utilizar la ruta completa y el separador de directorios `\\`. Asegúrate de tener los permisos necesarios y la contraseña del equipo para que Docker pueda acceder al directorio.

### Borrar un Volumen Específico

Para eliminar un volumen específico:

```ps
docker volume rm ID/Nombre_Volumen
```

> **Nota:** No se puede eliminar un volumen que esté en uso por un contenedor.

### Borrar Volúmenes Inactivos o No Asociados

Para eliminar volúmenes que ya no están en uso o que quedaron sin ser eliminados:

```ps
docker volume prune
```

> **Nota:** Se mostrará una advertencia para confirmar la acción antes de eliminar los volúmenes inactivos.

---

Este resumen cubre las operaciones básicas y avanzadas relacionadas con volúmenes en Docker, proporcionando una visión completa de su uso y administración.

## Manipulación de Imagen y Contenedor

La manipulación de imágenes y contenedores en Docker es fundamental para personalizar y optimizar tus entornos de desarrollo y producción. A continuación, se detallan los pasos y opciones disponibles para modificar y crear imágenes a partir de contenedores.

### Modificar una Imagen

Para modificar una imagen en Docker, debes seguir estos pasos:

#### 1. Crear un Contenedor Basado en una Imagen

Primero, crea un contenedor a partir de una imagen base. Por ejemplo, para crear un contenedor basado en la imagen de Ubuntu:

```ps
docker run -it --name Nombre_Contenedor Nombre_Imagen bash
```

> **Nota:** Aquí `Nombre_Contenedor` es el nombre que asignarás al contenedor, y `Nombre_Imagen` es la imagen base (por ejemplo, `ubuntu`).

#### 2. Realizar Cambios en el Contenedor

Una vez que el contenedor está en ejecución, puedes instalar software, modificar configuraciones, o realizar cualquier otra tarea necesaria. Por ejemplo, para instalar el servidor web Apache en el contenedor:

```bash
apt-get update
apt-get install -y apache2
```

Realiza todas las modificaciones que necesites dentro del contenedor.

#### 3. Crear una Imagen a Partir del Contenedor Modificado

Después de realizar los cambios, debes guardar estos cambios como una nueva imagen. Puedes hacerlo usando el comando `docker commit`:

```ps
docker commit ID/Nombre_Contenedor Nombre_Nueva_Imagen:tag
```

> **Nota:**
>
> - `ID/Nombre_Contenedor` es el identificador o nombre del contenedor modificado.
> - `Nombre_Nueva_Imagen` es el nombre que deseas asignar a la nueva imagen.
> - `tag` es una etiqueta opcional que puedes utilizar para versionar la imagen. Si no se especifica, Docker asignará automáticamente el tag `latest`.

### Crear una Imagen

Existen dos maneras principales de crear una imagen en Docker: automática y manual. En este caso, se abordará la creación manual de imágenes.

#### Crear una Imagen Manualmente

Para crear una imagen manualmente a partir de un contenedor modificado, sigue estos pasos:

1. **Modifica el Contenedor:** Realiza las modificaciones necesarias dentro del contenedor como se describió anteriormente.

2. **Guardar los Cambios:** Usa el comando `docker commit` para crear una nueva imagen que refleje los cambios realizados:

   ```ps
   docker commit ID/Nombre_Contenedor Nombre_Nueva_Imagen:tag
   ```

   - **`ID/Nombre_Contenedor`**: ID o nombre del contenedor desde el cual quieres crear la imagen.
   - **`Nombre_Nueva_Imagen`**: Nombre que deseas asignar a la nueva imagen.
   - **`tag`**: Etiqueta opcional para la versión de la imagen. Si no se proporciona, Docker usa `latest` por defecto.

#### Ejemplo de Creación de Imagen

Si modificaste un contenedor llamado `mi_contenedor` y deseas guardar estos cambios en una nueva imagen llamada `mi_imagen_personalizada` con una etiqueta `v1.0`, el comando sería:

```ps
docker commit mi_contenedor mi_imagen_personalizada:v1.0
```

> **Nota:** La creación manual de imágenes mediante `docker commit` es útil para capturar cambios en un contenedor en ejecución, pero para procesos más repetitivos y automatizados, se recomienda utilizar un `Dockerfile` para definir la imagen desde cero.

### Consejos Adicionales

- **Usar Dockerfile:** Para una mayor reproducibilidad y control, considera crear un `Dockerfile` en lugar de modificar contenedores manualmente. Un `Dockerfile` define todos los pasos necesarios para construir una imagen desde el inicio, asegurando consistencia en el proceso de construcción.

- **Etiquetas y Versiones:** Utiliza etiquetas para versionar tus imágenes. Esto facilita la gestión de versiones y el despliegue en entornos distintos.

- **Limpieza de Contenedores:** Después de crear una imagen a partir de un contenedor, considera limpiar el contenedor antiguo si ya no es necesario, usando:

   ```ps
   docker rm Nombre_Contenedor
   ```

- **Verificación de Imágenes:** Para listar las imágenes disponibles y verificar la creación de la nueva imagen, usa:

   ```ps
   docker images
   ```

---

Este ítem proporciona una guía detallada sobre cómo modificar y crear imágenes en Docker, cubriendo tanto el proceso manual como algunas mejores prácticas para un manejo eficiente de imágenes y contenedores.

## Dockerfile

### Introducción

Un `Dockerfile` es un archivo de configuración utilizado para construir imágenes de Docker de manera automática y reproducible. Este archivo contiene un conjunto de instrucciones que Docker sigue para crear una imagen. Las imágenes son el blueprint para los contenedores, y un `Dockerfile` especifica cómo debe ser construida una imagen a partir de una imagen base, agregando software, configuraciones y archivos necesarios.

### Ejemplo Básico

Aquí tienes un ejemplo básico de un `Dockerfile` que crea una imagen que ejecuta un programa "Hello-World":

```dockerfile
FROM scratch
COPY hello /
CMD ["/hello"]
```

En este ejemplo:

- `FROM scratch` indica que la imagen base es vacía.
- `COPY hello /` copia el archivo `hello` desde el contexto de construcción al contenedor.
- `CMD ["/hello"]` especifica que el contenedor debe ejecutar el comando `/hello` al iniciar.

### Crear una Imagen con Dockerfile

#### Estructura Básica del Dockerfile

Un `Dockerfile` típico puede contener las siguientes instrucciones:

1. **FROM**: Define la imagen base a partir de la cual se construye la nueva imagen.
2. **RUN**: Ejecuta comandos dentro del contenedor durante la construcción de la imagen.
3. **COPY**: Copia archivos del contexto de construcción al contenedor.
4. **ADD**: Similar a `COPY`, pero con más funcionalidades, como descomprimir archivos y copiar desde URLs.
5. **WORKDIR**: Establece el directorio de trabajo para las siguientes instrucciones.
6. **ENV**: Define variables de entorno.
7. **ARG**: Define variables de construcción que pueden ser pasadas al construir la imagen.
8. **EXPOSE**: Indica los puertos que la aplicación en el contenedor escuchará.
9. **VOLUME**: Define puntos de montaje para volúmenes que se comparten entre el contenedor y el host.
10. **CMD**: Especifica el comando predeterminado a ejecutar cuando el contenedor se inicia.
11. **ENTRYPOINT**: Similar a `CMD`, pero asegura que el comando especificado se ejecute siempre cuando el contenedor se inicie.

#### Ejemplo de Dockerfile

```dockerfile
# Seleccionar la imagen base
FROM ubuntu:20.04

# Actualizar y instalar software
RUN apt-get update && apt-get install -y python3 python3-pip

# Crear directorios y establecer el directorio de trabajo
WORKDIR /app
RUN mkdir /app/data

# Copiar archivos desde el contexto de construcción al contenedor
COPY requirements.txt /app/
COPY src/ /app/src/

# Instalar dependencias de Python
RUN pip3 install -r requirements.txt

# Exponer el puerto 8080 para la aplicación
EXPOSE 8080

# Definir variables de entorno
ENV APP_ENV=production

# Establecer el punto de entrada
ENTRYPOINT ["python3", "src/app.py"]

# Comando predeterminado
CMD ["--port", "8080"]
```

### Comando `RUN`

El comando `RUN` se utiliza para ejecutar comandos en una capa de la imagen. Puedes usar `&&` para combinar múltiples comandos en una sola capa:

```dockerfile
RUN apt-get update && apt-get install -y python3 && apt-get install -y git
```

Para una mejor legibilidad, también puedes usar `\` para dividir comandos largos en varias líneas:

```dockerfile
RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get install -y git
```

### Comando `CMD`

El comando `CMD` especifica el comando predeterminado a ejecutar cuando el contenedor inicia. Puedes utilizar `CMD` en dos formatos:

1. **Formato de Shell**: Ejecuta el comando en un shell:

   ```dockerfile
   CMD echo "Hello, World!"
   ```

2. **Formato Exec**: Ejecuta el comando directamente sin un shell, lo que es más eficiente:

   ```dockerfile
   CMD ["echo", "Hello, World!"]
   ```

> **Nota:** Solo puede haber un `CMD` por Dockerfile. Si se especifican múltiples `CMD`, solo se ejecutará el último.

### Comando `ENTRYPOINT`

El comando `ENTRYPOINT` define el comando que se ejecuta siempre que el contenedor se inicia, independientemente de los comandos pasados al contenedor:

```dockerfile
ENTRYPOINT ["/bin/bash"]
```

A diferencia de `CMD`, `ENTRYPOINT` no se puede reemplazar en tiempo de ejecución, lo que lo hace adecuado para casos donde quieres que el contenedor siempre ejecute un comando específico.

Puedes usar `ENTRYPOINT` junto con `CMD` para proporcionar argumentos predeterminados:

```dockerfile
ENTRYPOINT ["python3", "src/app.py"]
CMD ["--port", "8080"]
```

En este caso, `ENTRYPOINT` define el comando principal, mientras que `CMD` proporciona argumentos opcionales.

### Comando `WORKDIR`

`WORKDIR` establece el directorio de trabajo para los comandos `RUN`, `CMD`, `ENTRYPOINT`, `COPY`, y `ADD`. Puedes usar `WORKDIR` varias veces:

```dockerfile
WORKDIR /app
RUN mkdir data
WORKDIR /app/data
RUN touch file.txt
```

El contenedor se iniciará en el último directorio de trabajo especificado.

### Comando `COPY` y `ADD`

#### `COPY`

`COPY` copia archivos y directorios desde el contexto de construcción al contenedor:

```dockerfile
COPY index.html /app/
```

#### `ADD`

`ADD` tiene capacidades adicionales, como descomprimir archivos y copiar desde URLs:

```dockerfile
ADD archive.tar.gz /app/
ADD https://example.com/file.txt /app/
```

> **Nota:** Prefiere `COPY` cuando solo necesites copiar archivos locales, ya que `ADD` tiene más funcionalidades que pueden no ser necesarias y podrían introducir complejidades innecesarias.

### Comando `ENV`

`ENV` define variables de entorno que estarán disponibles en el contenedor:

```dockerfile
ENV APP_ENV=production
```

Estas variables se pueden usar en el contenedor para configurar el entorno de ejecución.

### Comando `ARG`

`ARG` permite definir variables que pueden ser pasadas en tiempo de construcción:

```dockerfile
ARG APP_VERSION
RUN echo $APP_VERSION
```

Puedes pasar valores a las variables `ARG` usando `--build-arg`:

```sh
docker build --build-arg APP_VERSION=1.0 -t my_image .
```

> **Nota:** `ARG` solo está disponible durante la construcción de la imagen, mientras que `ENV` está disponible en el contenedor en ejecución.

### Comando `EXPOSE`

`EXPOSE` indica que el contenedor escuchará en el puerto especificado. Esto es informativo y no publica el puerto por sí mismo:

```dockerfile
EXPOSE 8080
```

Para publicar el puerto en el host, usa el flag `-p` con `docker run`:

```sh
docker run -p 8080:8080 my_image
```

### Comando `VOLUME`

`VOLUME` crea un punto de montaje para volúmenes. Esto permite persistir datos generados y compartidos entre contenedores:

```dockerfile
VOLUME ["/data"]
```

Puedes montar volúmenes en el contenedor al ejecutar `docker run`:

```sh
docker run -v /host/data:/data my_image
```

---

Este artículo proporciona una visión completa y detallada de los conceptos básicos y comandos de `Dockerfile`, cubriendo desde la creación de una imagen hasta la gestión de volúmenes y variables. Con esta guía, deberías estar bien preparado para crear y personalizar imágenes de Docker de manera efectiva.

## Docker Hub

Docker Hub es un servicio de repositorio en línea para imágenes de Docker. Proporciona un espacio para almacenar, compartir y gestionar imágenes de Docker. Puedes encontrar imágenes oficiales proporcionadas por empresas y organizaciones, así como imágenes creadas y compartidas por otros usuarios de la comunidad.

### Subir una Imagen a Docker Hub

#### 1. Iniciar Sesión en Docker Hub

Antes de subir una imagen a Docker Hub, necesitas iniciar sesión en tu cuenta. Puedes hacerlo con el siguiente comando:

```bash
docker login
```

**Pasos para iniciar sesión:**

- Al ejecutar `docker login`, se te pedirá que ingreses tu nombre de usuario y contraseña de Docker Hub.
- Una vez ingresados los datos correctamente, verás el mensaje `Login Succeeded`, que indica que el inicio de sesión fue exitoso.
- La sesión permanecerá activa mientras el terminal esté abierto o mientras la conexión sea válida.

#### 2. Etiquetar la Imagen

Docker Hub requiere que las imágenes se etiqueten de manera específica antes de subirlas. Esta etiqueta incluye el nombre del usuario de Docker Hub y el nombre del repositorio. Para etiquetar una imagen existente, usa el comando `docker image tag`:

```bash
docker image tag Nombre_Imagen:TAG NombreUsuario/NombreImagen:TAG
```

**Ejemplo:**

Supongamos que tienes una imagen local llamada `mi-imagen` con la etiqueta `v1.0`. Si tu nombre de usuario en Docker Hub es `miusuario`, deberías etiquetar tu imagen de la siguiente manera:

```bash
docker image tag mi-imagen:v1.0 miusuario/mi-imagen:v1.0
```

En este ejemplo:

- `mi-imagen:v1.0` es el nombre y la etiqueta de la imagen local.
- `miusuario/mi-imagen:v1.0` es el nombre y la etiqueta que se usará en Docker Hub.

#### 3. Subir la Imagen a Docker Hub

Una vez que la imagen esté etiquetada correctamente, puedes subirla a Docker Hub con el siguiente comando:

```bash
docker push NombreUsuario/NombreImagen:TAG
```

**Ejemplo:**

Siguiendo el ejemplo anterior, para subir la imagen etiquetada `miusuario/mi-imagen:v1.0`, usarías el siguiente comando:

```bash
docker push miusuario/mi-imagen:v1.0
```

**Notas:**

- Asegúrate de reemplazar `NombreUsuario`, `NombreImagen`, y `TAG` con los valores correspondientes a tu imagen y cuenta de Docker Hub.
- El proceso de subida puede tardar un poco dependiendo del tamaño de la imagen y la velocidad de tu conexión a Internet.

#### Resumen

1. **Iniciar sesión en Docker Hub:**

   ```bash
   docker login
   ```

2. **Etiquetar la imagen:**

   ```bash
   docker image tag Nombre_Imagen:TAG NombreUsuario/NombreImagen:TAG
   ```

3. **Subir la imagen:**

   ```bash
   docker push NombreUsuario/NombreImagen:TAG
   ```

Con estos pasos, puedes subir tus imágenes a Docker Hub y compartirlas con otros usuarios o utilizarlas en diferentes entornos. ¡Docker Hub es una herramienta poderosa para gestionar y distribuir imágenes de Docker de manera eficiente!

## Docker Compose

Docker Compose es una herramienta fundamental para la definición y ejecución de aplicaciones que requieren múltiples contenedores Docker. Utilizando un archivo de configuración llamado `docker-compose.yml`, Docker Compose permite orquestar y coordinar los diferentes servicios y contenedores que componen una aplicación, facilitando su gestión y despliegue.

### ¿Qué es Docker Compose?

Docker Compose simplifica el manejo de aplicaciones complejas al permitir la definición de múltiples servicios en un solo archivo. Este archivo, `docker-compose.yml`, describe cómo deben configurarse y ejecutarse los contenedores, sus redes, volúmenes y otras dependencias.

Por ejemplo, en un stack MEAN (MongoDB, Express, Angular, Node.js), Docker Compose facilita la configuración y coordinación de todos los componentes necesarios. En lugar de iniciar y gestionar cada contenedor de forma independiente, Docker Compose permite hacerlo con un único comando, lo que optimiza y simplifica el flujo de trabajo.

### Instalación de Docker Compose

Docker Compose se incluye automáticamente en Docker Desktop para sistemas operativos Windows y macOS. Para Linux, la instalación debe realizarse manualmente. Aquí te dejo una guía rápida para cada plataforma:

#### En Windows y macOS

Docker Compose ya está integrado en Docker Desktop. Solo necesitas instalar Docker Desktop para tener Docker Compose disponible.

#### En Linux

Para instalar Docker Compose en Linux, sigue estos pasos:

1. **Descarga la versión más reciente:**

   ```bash
   sudo curl -L "https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
   ```

2. **Aplica permisos de ejecución:**

   ```bash
   sudo chmod +x /usr/local/bin/docker-compose
   ```

3. **Verifica la instalación:**

   ```bash
   docker-compose --version
   ```

Para obtener más detalles y la documentación completa, visita la [documentación oficial de Docker Compose](https://docs.docker.com/compose/install/).

---

Esta versión proporciona una visión más clara de lo que es Docker Compose y cómo se instala en diferentes sistemas operativos, ofreciendo un enfoque más estructurado y fácil de seguir.

### Comandos Docker-Compose

#### `docker-compose up`

El comando `docker-compose up` es una de las herramientas más utilizadas en Docker Compose y se encarga de iniciar los servicios definidos en el archivo `docker-compose.yml`. Este comando permite construir, crear y arrancar los contenedores según la configuración especificada en el archivo. A continuación se detallan sus principales características y usos:

##### ¿Qué Hace el Comando `docker-compose up`?

Cuando ejecutas `docker-compose up`, Docker Compose realiza las siguientes acciones:

1. **Lee el Archivo `docker-compose.yml`:**
   Docker Compose lee la configuración del archivo `docker-compose.yml` ubicado en el directorio actual. Este archivo define los servicios, redes, volúmenes y otras configuraciones necesarias para los contenedores.

2. **Construye las Imágenes (si es necesario):**
   Si el archivo `docker-compose.yml` especifica que se deben construir imágenes desde un Dockerfile, Docker Compose se encargará de construir estas imágenes antes de iniciar los contenedores.

3. **Crea y Arranca los Contenedores:**
   Docker Compose crea los contenedores según la configuración proporcionada y luego los arranca. Si los contenedores ya existen, simplemente los inicia.

4. **Configura Redes y Volúmenes:**
   Si el archivo `docker-compose.yml` define redes y volúmenes, Docker Compose los configura y los asocia a los contenedores correspondientes.

5. **Muestra los Logs en Tiempo Real:**
   Mientras los contenedores están en ejecución, Docker Compose muestra la salida de los logs en la terminal, permitiendo observar la actividad de los servicios en tiempo real.

##### Ejemplo de Uso

Para iniciar los servicios definidos en el archivo `docker-compose.yml`, simplemente ejecuta el siguiente comando:

```bash
docker-compose up
```

**Resultado:**

```bash
# Ejemplo 1
[XXXX@XXX ~]# docker-compose up
Creating network "mi_red" with the default driver
Creating volume "mi_volumen" with default driver
Creating mi_servicio_db_1 ... done
Creating mi_servicio_web_1 ... done
Attaching to mi_servicio_db_1, mi_servicio_web_1
mi_servicio_db_1 | [Fecha y Hora] Mensaje del contenedor de base de datos
mi_servicio_web_1 | [Fecha y Hora] Mensaje del contenedor web
...
```

En este ejemplo, `docker-compose up` inicia dos contenedores (`mi_servicio_db_1` y `mi_servicio_web_1`) y muestra sus logs en tiempo real.

##### Opciones Adicionales

- **-d (Detached Mode):** Para ejecutar los contenedores en segundo plano, agrega el flag -d:

  ```bash
  docker-compose up -d
  ```

  Esto permite que los contenedores se ejecuten en el fondo, liberando la terminal para otros comandos.

- **`--build`:** Para forzar la reconstrucción de las imágenes antes de iniciar los contenedores, utiliza:

  ```bash
  docker-compose up --build
  ```

- **`--force-recreate`:** Para forzar la recreación de los contenedores, incluso si no ha habido cambios, usa:

  ```bash
  docker-compose up --force-recreate
  ```

- **`--remove-orphans`:** Para eliminar contenedores que no están definidos en el archivo `docker-compose.yml` actual, puedes usar:

  ```bash
  docker-compose up --remove-orphans
  ```

Este comando es esencial para la gestión de aplicaciones multicontenedor, permitiendo una configuración y ejecución sencilla de servicios interdependientes.

---

Espero que esta explicación te sea útil para comprender cómo funciona el comando `docker-compose up` y cómo puedes utilizarlo eficazmente en tus proyectos.

#### `docker-compose ps`

El comando `docker-compose ps` se utiliza para mostrar una lista de los contenedores que forman parte de los servicios definidos en el archivo `docker-compose.yml`. Este comando proporciona una visión general del estado actual de los contenedores, similar a lo que ofrece el comando `docker ps`, pero específicamente para los servicios gestionados por Docker Compose.

##### ¿Qué Hace el Comando `docker-compose ps`?

Cuando ejecutas `docker-compose ps`, Docker Compose realiza las siguientes acciones:

1. **Lee el Archivo `docker-compose.yml`:**
   Docker Compose analiza el archivo `docker-compose.yml` ubicado en el directorio actual para identificar los servicios definidos y los contenedores asociados.

2. **Muestra Información de los Contenedores:**
   El comando lista todos los contenedores que están siendo gestionados por Docker Compose, incluyendo su estado actual y otra información relevante.

3. **Proporciona Detalles del Estado del Contenedor:**
   La salida incluye información sobre el estado de cada contenedor, lo que facilita la supervisión y gestión de los servicios.

##### Ejemplo de Uso

Para obtener una lista de los contenedores gestionados por Docker Compose y su estado actual, ejecuta el siguiente comando:

```bash
docker-compose ps
```

**Resultado:**

```bash
# Ejemplo 1
[XXXX@XXX ~]# docker-compose ps
     Name                   Command               State           Ports
----------------------------------------------------------------------------
mi_servicio_db_1   docker-entrypoint.sh mongod   Up      27017/tcp
mi_servicio_web_1  /bin/sh -c 'npm start'        Up      0.0.0.0:80->80/tcp
```

En este ejemplo:

- **Name:** Muestra el nombre del contenedor, que incluye el nombre del servicio y un sufijo numérico.
- **Command:** Muestra el comando que el contenedor está ejecutando.
- **State:** Indica el estado actual del contenedor (por ejemplo, "Up" si está en ejecución).
- **Ports:** Muestra los puertos expuestos y su mapeo desde el contenedor al host.

##### Opciones Adicionales

- **`-q` (Quiet Mode):** Para mostrar solo los IDs de los contenedores sin información adicional, utiliza:

  ```bash
  docker-compose ps -q
  ```

- **`--services`:** Para listar solo los nombres de los servicios (sin detalles de los contenedores), usa:

  ```bash
  docker-compose ps --services
  ```

- **`--filter`:** Para filtrar la lista de contenedores según ciertos criterios, como el estado (por ejemplo, `status=running`):

  ```bash
  docker-compose ps --filter "status=running"
  ```

##### Casos de Uso

- **Monitoreo del Estado de los Servicios:** Puedes usar `docker-compose ps` para verificar rápidamente si todos los servicios están en funcionamiento y si los contenedores están correctamente configurados.
  
- **Diagnóstico de Problemas:** Si un contenedor no está funcionando como se espera, `docker-compose ps` te permite verificar su estado actual y detectar posibles problemas.

- **Verificación de Puertos:** Puedes comprobar qué puertos están expuestos y mapeados, asegurándote de que la configuración de red es la esperada.

---

Este comando es útil para la administración de aplicaciones multicontenedor, proporcionando una visión clara del estado de cada contenedor dentro de un entorno Docker Compose.

#### `docker-compose images`

El comando `docker-compose images` se utiliza para listar las imágenes Docker que están siendo utilizadas por los contenedores gestionados por Docker Compose. Este comando proporciona una visión general de las imágenes que se han construido o descargado y que están en uso en el contexto de un archivo `docker-compose.yml`.

##### ¿Qué Hace el Comando `docker-compose images`?

Cuando ejecutas `docker-compose images`, Docker Compose realiza las siguientes acciones:

1. **Lee el Archivo `docker-compose.yml`:**
   Docker Compose analiza el archivo `docker-compose.yml` en el directorio actual para identificar las imágenes asociadas a cada servicio.

2. **Lista las Imágenes Utilizadas:**
   El comando muestra una lista de las imágenes que se están utilizando en los servicios definidos. Esto incluye tanto imágenes construidas localmente como imágenes descargadas de un registro Docker (por ejemplo, Docker Hub).

3. **Proporciona Detalles Relevantes:**
   La salida incluye información como el nombre de la imagen, el nombre del contenedor y la etiqueta asociada, lo que facilita la administración y verificación de las imágenes.

##### Ejemplo de Uso

Para ver una lista de las imágenes utilizadas por los servicios definidos en el archivo `docker-compose.yml`, ejecuta el siguiente comando:

```bash
docker-compose images
```

**Resultado:**

```bash
# Ejemplo 1
[XXXX@XXX ~]# docker-compose images
         Container       Repository              Tag        Image ID        Size
-----------------------------------------------------------------------------------
mi_servicio_db_1    mongo                    latest     a1b2c3d4e5f6    487MB
mi_servicio_web_1   myapp/frontend            1.0       7g8h9i0j1k2l    230MB
```

En este ejemplo:

- **Container:** Muestra el nombre del contenedor asociado a la imagen.
- **Repository:** Indica el nombre del repositorio de la imagen.
- **Tag:** Muestra la etiqueta de la imagen, que puede ser una versión específica (por ejemplo, `latest`, `1.0`).
- **Image ID:** Proporciona el ID único de la imagen, útil para identificaciones más precisas.
- **Size:** Muestra el tamaño de la imagen en disco.

##### Opciones Adicionales

Actualmente, el comando `docker-compose images` no tiene opciones adicionales específicas. Sin embargo, puedes combinarlo con otros comandos para obtener información complementaria:

- **`docker images`:** Para obtener una lista más detallada de todas las imágenes Docker en el sistema, puedes usar el comando `docker images`. Esto proporcionará información sobre imágenes no solo relacionadas con Docker Compose, sino también imágenes de otros proyectos o servicios.

##### Casos de Uso

- **Verificación de Imágenes:** Utiliza `docker-compose images` para confirmar qué imágenes se están utilizando en tu entorno Docker Compose, lo cual es útil para asegurar que estás utilizando la versión correcta de cada imagen.

- **Gestión de Espacio en Disco:** Puedes verificar el tamaño de las imágenes para gestionar el espacio en disco de manera más efectiva, especialmente si tienes imágenes grandes que podrían estar ocupando espacio innecesario.

- **Depuración:** Si un servicio no está funcionando como se espera, comprobar las imágenes utilizadas puede ayudar a identificar problemas relacionados con versiones incorrectas o imágenes obsoletas.

---

Este comando es útil para la administración de imágenes en un entorno Docker Compose, proporcionando una visión clara de qué imágenes están en uso y facilitando la gestión y verificación de los recursos de contenedor.

#### `docker-compose config`

El comando `docker-compose config` es una herramienta útil para validar y verificar la configuración de tu archivo `docker-compose.yml`. Te ayuda a asegurar que la sintaxis y la estructura del archivo son correctas, y te proporciona información detallada sobre los servicios y configuraciones definidas.

##### ¿Qué Hace el Comando `docker-compose config`?

1. **Valida la Sintaxis:**
   Verifica si el archivo `docker-compose.yml` está correctamente formateado y sigue la sintaxis YAML adecuada. Esto ayuda a prevenir errores de configuración que podrían afectar la ejecución de los contenedores.

2. **Muestra la Configuración Completa:**
   Imprime la configuración completa del archivo `docker-compose.yml`, lo que te permite revisar y confirmar que todas las opciones y servicios están definidos correctamente.

3. **Detecta Errores:**
   Identifica y muestra errores en la configuración del archivo, como errores de sintaxis o configuraciones incorrectas, proporcionando mensajes de error específicos para facilitar la resolución de problemas.

##### Comandos y Opciones

1. **Mostrar Información Completa del Archivo**

   Para mostrar la información completa y la configuración contenida dentro del archivo `docker-compose.yml`, usa el siguiente comando:

   ```bash
   docker-compose config
   ```

   **Resultado:**

   ```yaml
   # Ejemplo 1
   version: '3.8'
   services:
     web:
       image: nginx:latest
       ports:
         - "80:80"
     db:
       image: postgres:latest
       environment:
         POSTGRES_PASSWORD: example
   ```

   Este comando muestra toda la configuración que Docker Compose está utilizando para crear y gestionar los servicios. Es útil para revisar y verificar que todos los servicios y configuraciones están correctamente definidos.

2. **Mostrar Solo los Errores**

   Para verificar si hay errores en el archivo `docker-compose.yml` sin mostrar la configuración completa, usa la opción `-q` (quiet):

   ```bash
   docker-compose config -q
   ```

   **Resultado:**

   ```bash
   # Ejemplo 2
   [XXXX@XXX ~]# docker-compose config -q
   ```

   Si no hay errores, no se muestra ninguna salida. Si hay errores, se mostrarán mensajes de error que te ayudarán a identificar y corregir los problemas en el archivo de configuración.

3. **Mostrar Solo los Servicios Definidos**

   Para listar únicamente los servicios definidos en el archivo `docker-compose.yml`, utiliza la opción `--services`:

   ```bash
   docker-compose config --services
   ```

   **Resultado:**

   ```bash
   # Ejemplo 3
   [XXXX@XXX ~]# docker-compose config --services
   web
   db
   ```

   Esto proporciona una lista de los nombres de los servicios que están definidos en el archivo de configuración. Es útil para una visión rápida de los servicios que Docker Compose va a gestionar.

##### Consideraciones Importantes

- **Ubicación del Archivo:** Para que el comando funcione correctamente, debes ejecutar `docker-compose config` en el directorio donde se encuentra el archivo `docker-compose.yml`, o especificar el archivo con la opción -f si está en una ubicación diferente.

- **Uso en Desarrollo:** Utiliza este comando durante el desarrollo para validar la configuración antes de iniciar los servicios. Esto puede ayudarte a detectar errores de configuración antes de que causen problemas en la ejecución de los contenedores.

- **Validación en CI/CD:** Integra `docker-compose config` en tus procesos de integración continua y despliegue continuo (CI/CD) para asegurarte de que las configuraciones son válidas antes de desplegar aplicaciones en entornos de producción.

---

El comando `docker-compose config` es una herramienta esencial para garantizar la validez y precisión de tu configuración en Docker Compose, ayudando a evitar problemas antes de que afecten la ejecución de tus servicios.

#### `docker-compose start`

El comando `docker-compose start` se utiliza para iniciar los contenedores que componen los servicios definidos en un archivo `docker-compose.yml` que ya han sido creados anteriormente. A diferencia de `docker-compose up`, que crea y luego inicia los contenedores, `docker-compose start` solo inicia contenedores que ya están definidos y creados.

##### ¿Qué Hace el Comando `docker-compose start`?

1. **Inicia Contenedores Existentes:**
   Este comando inicia contenedores que han sido previamente creados con `docker-compose create` o `docker-compose up`, pero que están detenidos. No crea nuevos contenedores ni configura servicios, solo arranca los contenedores existentes.

2. **Recupera el Estado Anterior:**
   Restaura los contenedores a su estado de ejecución anterior, si estaban en pausa o detenidos. Los contenedores no se recrean, lo que puede ahorrar tiempo en comparación con reiniciar todo el entorno.

3. **No Re-Configura ni Re-Crea:**
   A diferencia de `docker-compose up`, que también puede recrear contenedores y aplicar cambios en la configuración, `docker-compose start` solo se enfoca en iniciar los contenedores existentes sin modificar su configuración.

##### Comando y Ejemplos

1. **Iniciar Todos los Contenedores Detenidos**

   Para iniciar todos los contenedores que están definidos en el archivo `docker-compose.yml` y que están en estado detenido, utiliza:

   ```bash
   docker-compose start
   ```

   **Resultado:**

   ```bash
   Starting web ... done
   Starting db  ... done
   ```

   En este ejemplo, `docker-compose start` arranca los contenedores para los servicios `web` y `db` que ya han sido creados. El comando muestra un mensaje indicando que cada contenedor ha sido iniciado correctamente.

2. **Iniciar Contenedores Específicos**

   Para iniciar solo contenedores específicos dentro de los servicios definidos, puedes proporcionar el nombre de uno o más servicios:

   ```bash
   docker-compose start web db
   ```

   **Resultado:**

   ```bash
   Starting web ... done
   Starting db  ... done
   ```

   Aquí, solo los contenedores correspondientes a los servicios `web` y `db` se inician, dejando otros servicios en su estado actual.

##### Consideraciones Importantes

- **Contenedores Preexistentes:** Asegúrate de que los contenedores han sido creados previamente antes de usar `docker-compose start`. Si los contenedores no existen, el comando no los creará ni los iniciará.

- **Uso en Desarrollo:** Utiliza `docker-compose start` en entornos de desarrollo para reanudar rápidamente el trabajo en contenedores que estaban detenidos sin la necesidad de recrearlos.

- **Reinicio de Contenedores:** Si necesitas aplicar cambios en la configuración o actualizar las imágenes, es mejor usar `docker-compose up` para asegurar que todos los contenedores se configuren y creen de nuevo según las últimas especificaciones.

- **Combinación con Otros Comandos:** Puedes combinar `docker-compose start` con otros comandos como `docker-compose stop` para gestionar el ciclo de vida de tus contenedores en diferentes estados.

##### Resumen

El comando `docker-compose start` es una herramienta útil para gestionar y reiniciar contenedores que ya han sido creados pero están detenidos. Proporciona una manera eficiente de reanudar servicios sin tener que recrear contenedores o aplicar nuevas configuraciones, lo que puede ser especialmente valioso en entornos de desarrollo y pruebas.

#### `docker-compose logs`

El comando `docker-compose logs` se utiliza para ver los registros (logs) generados por los contenedores de un servicio específico dentro de una configuración de Docker Compose. Estos logs proporcionan información crucial sobre el funcionamiento del servicio, incluyendo mensajes de información, advertencias y errores que ocurren durante la ejecución.

##### ¿Qué Hace el Comando `docker-compose logs`?

1. **Visualiza Registros de Contenedores:**
   Muestra la salida de los logs de los contenedores asociados a un servicio específico. Estos registros pueden incluir detalles sobre el comportamiento del servicio, errores encontrados, y mensajes de depuración.

2. **Filtra por Servicio:**
   Permite especificar un servicio particular dentro del archivo `docker-compose.yml` para ver sus logs, lo cual es útil cuando quieres concentrarte en la salida de un solo componente de la aplicación.

3. **Facilita la Depuración:**
   Ayuda en la depuración y monitoreo de aplicaciones al proporcionar un flujo continuo de registros de actividad y errores, permitiendo identificar y solucionar problemas de manera más eficiente.

##### Comando y Ejemplos

1. **Ver Logs de un Servicio Específico**

   Para ver los logs de un servicio específico, proporciona el nombre del servicio definido en el archivo `docker-compose.yml`. Por ejemplo, para ver los logs del servicio `web`:

   ```bash
   docker-compose logs web
   ```

   **Resultado:**

   ```bash
   web_1  | [Fecha y Hora] Información de inicio del servicio
   web_1  | [Fecha y Hora] Mensaje de log de advertencia
   web_1  | [Fecha y Hora] Mensaje de error
   ```

   En este ejemplo, el comando muestra los registros generados por el contenedor asociado al servicio `web`, incluyendo información de inicio, advertencias y errores.

2. **Ver Logs de Todos los Servicios**

   Si quieres ver los logs de todos los servicios definidos en el archivo `docker-compose.yml`, simplemente omite el nombre del servicio:

   ```bash
   docker-compose logs
   ```

   **Resultado:**

   ```bash
   web_1  | [Fecha y Hora] Información del servicio web
   db_1   | [Fecha y Hora] Información del servicio de base de datos
   ```

   Aquí, el comando muestra los registros de todos los contenedores asociados a los servicios `web` y `db`.

3. **Ver Logs en Tiempo Real**

   Para seguir los logs en tiempo real (similar a tailing en archivos de log), usa la opción -f o `--follow`:

   ```bash
   docker-compose logs -f web
   ```

   **Resultado:**

   ```bash
   web_1  | [Fecha y Hora] Información en tiempo real del servicio web
   web_1  | [Fecha y Hora] Más mensajes de log en tiempo real
   ```

   Con esta opción, el comando sigue mostrando nuevos registros a medida que se generan, permitiendo una visualización continua.

4. **Ver Logs con Timestamps**

   Para incluir timestamps en los logs, utiliza la opción `--timestamps`:

   ```bash
   docker-compose logs --timestamps web
   ```

   **Resultado:**

   ```bash
   web_1  | [Fecha y Hora] Información con timestamp del servicio web
   web_1  | [Fecha y Hora] Mensaje adicional con timestamp
   ```

   Esto ayuda a identificar cuándo ocurrieron eventos específicos en los registros.

##### Consideraciones Importantes

- **Acceso a Registros Anteriores:** `docker-compose logs` muestra los registros generados desde que el contenedor se inició. No proporciona acceso a registros históricos más allá de lo que está disponible en el sistema de archivos del contenedor.

- **Espaciado y Formato:** La salida de logs puede variar en formato dependiendo de la configuración del servicio y de la aplicación que se está ejecutando en el contenedor.

- **Utilidad en Desarrollo y Producción:** En desarrollo, `docker-compose logs` es útil para depuración en tiempo real. En producción, puede ser necesario redirigir los logs a un sistema de gestión de logs para un análisis más robusto.

- **Recursos de Sistema:** El comando puede generar una gran cantidad de salida si se utiliza con servicios que producen muchos registros, así que úsalos con cuidado para evitar sobrecargar la terminal.

##### Resumen

El comando `docker-compose logs` es una herramienta esencial para la monitorización y depuración de aplicaciones que utilizan Docker Compose. Permite acceder a los registros generados por los contenedores, facilitando la identificación de problemas y el seguimiento del comportamiento de los servicios en ejecución.

#### `docker-compose top`

El comando `docker-compose top` permite ver los procesos que se están ejecutando dentro de los contenedores de un servicio gestionado por Docker Compose. Muestra una lista de los procesos activos, similar a la forma en que `top` o `htop` funciona en sistemas Linux, pero específico para contenedores de Docker.

##### ¿Qué Hace el Comando `docker-compose top`?

1. **Visualiza Procesos en Contenedores:**
   Muestra los procesos en ejecución dentro de los contenedores asociados a un servicio. Esto incluye información sobre el uso de CPU, memoria y otros detalles del proceso.

2. **Identificación de Recursos Intensivos:**
   Ayuda a identificar qué procesos están utilizando más recursos dentro de los contenedores, lo que puede ser útil para la depuración y optimización.

3. **Monitoreo de Contenedores:**
   Proporciona una visión rápida del estado de los procesos en los contenedores, permitiendo a los administradores de sistemas y desarrolladores monitorear el comportamiento de los servicios en tiempo real.

##### Comando y Ejemplos

1. **Ver Procesos de un Servicio Específico**

   Para ver los procesos que se están ejecutando dentro de los contenedores de un servicio específico, proporciona el nombre del servicio definido en el archivo `docker-compose.yml`. Por ejemplo, para ver los procesos del servicio `web`:

   ```bash
   docker-compose top web
   ```

   **Resultado:**

   ```bash
   Name         CPU %    MEM USAGE / LIMIT    MEM %   NET I/O           PID
   web_1        0.00%   15.4MiB / 1GiB        1.50%   2.1MB / 1.5MB      1234
   web_2        0.01%   16.2MiB / 1GiB        1.62%   2.3MB / 1.8MB      5678
   ```

   En este ejemplo, el comando muestra una lista de procesos para los contenedores asociados al servicio `web`, incluyendo el uso de CPU, memoria y otras métricas relevantes.

2. **Ver Todos los Procesos de Todos los Servicios**

   Si quieres ver los procesos de todos los servicios definidos en el archivo `docker-compose.yml`, omite el nombre del servicio:

   ```bash
   docker-compose top
   ```

   **Resultado:**

   ```bash
   Name         CPU %    MEM USAGE / LIMIT    MEM %   NET I/O           PID
   web_1        0.00%   15.4MiB / 1GiB        1.50%   2.1MB / 1.5MB      1234
   db_1         0.03%   20.1MiB / 1GiB        2.01%   3.0MB / 2.5MB      4321
   ```

   Aquí, el comando muestra los procesos para todos los contenedores de todos los servicios, proporcionando una visión general del uso de recursos en toda la aplicación.

3. **Ver Detalles Específicos de Procesos**

   La salida de `docker-compose top` incluye columnas que proporcionan información específica sobre cada proceso, tales como:

   - **Name:** Nombre del contenedor o del proceso.
   - **CPU %:** Porcentaje de uso de CPU por el proceso.
   - **MEM USAGE / LIMIT:** Uso de memoria del proceso y el límite asignado.
   - **MEM %:** Porcentaje de memoria utilizada en relación con el límite.
   - **NET I/O:** Información sobre la entrada/salida de red.
   - **PID:** Identificador del proceso.

##### Consideraciones Importantes

- **Estado de los Contenedores:** El comando `docker-compose top` solo muestra información sobre los contenedores que están en ejecución. Si un contenedor está detenido, sus procesos no aparecerán en la salida.

- **Uso de Recursos:** La visualización de procesos puede ser útil para identificar cuellos de botella en el rendimiento y para optimizar el uso de recursos en los contenedores.

- **Formato de Salida:** La salida puede variar dependiendo del sistema y de la versión de Docker Compose utilizada. Los detalles de los procesos pueden ser más extensos en entornos con muchos contenedores y servicios.

- **Interacción con Otros Comandos:** Puede ser útil usar `docker-compose top` junto con otros comandos como `docker-compose logs` para obtener una visión completa del estado y rendimiento de los servicios.

##### Resumen

El comando `docker-compose top` proporciona una visión detallada de los procesos en ejecución dentro de los contenedores gestionados por Docker Compose. Permite a los usuarios identificar procesos que consumen muchos recursos y monitorear el estado de los servicios en tiempo real. Es una herramienta valiosa para la administración y optimización de aplicaciones basadas en contenedores.

#### `docker-compose pause`

El comando `docker-compose pause` permite pausar temporalmente todos los contenedores que están ejecutándose en un servicio gestionado por Docker Compose. Esta funcionalidad es útil cuando se desea detener la ejecución de los contenedores sin eliminarlos ni detener completamente los servicios.

##### ¿Qué Hace el Comando `docker-compose pause`?

1. **Pausa Contenedores:**
   Pausa la ejecución de todos los contenedores asociados a los servicios definidos en el archivo `docker-compose.yml`. La pausa detiene la ejecución de procesos dentro de los contenedores, pero mantiene el estado y los datos en su lugar.

2. **Mantiene Estado:**
   Aunque los contenedores están pausados, los datos y la configuración permanecen intactos. Los contenedores pueden ser reanudados más tarde sin pérdida de información.

3. **Útil para Mantenimiento:**
   Pausar contenedores puede ser útil durante el mantenimiento o la actualización de servicios, permitiendo que los servicios sean interrumpidos temporalmente sin necesidad de reiniciar o eliminar los contenedores.

##### Comando y Ejemplos

1. **Pausar Todos los Contenedores**

   Para pausar todos los contenedores definidos en el archivo `docker-compose.yml`, simplemente usa el siguiente comando:

   ```bash
   docker-compose pause
   ```

   **Resultado:**

   ```bash
   Pausing service1 ... done
   Pausing service2 ... done
   ```

   En este ejemplo, todos los contenedores asociados a `service1` y `service2` se pausarán. Los procesos dentro de estos contenedores se detendrán, pero los contenedores seguirán existiendo y ocupando recursos.

2. **Pausar Contenedores Específicos**

   Si deseas pausar solo los contenedores de servicios específicos, proporciona el nombre del servicio. Por ejemplo, para pausar solo el servicio `web`:

   ```bash
   docker-compose pause web
   ```

   **Resultado:**

   ```bash
   Pausing web ... done
   ```

   Esto detendrá los procesos del contenedor asociado al servicio `web`, mientras que los demás servicios seguirán funcionando normalmente.

3. **Reanudar Contenedores**

   Para reanudar los contenedores que han sido pausados, utiliza el siguiente comando:

   ```bash
   docker-compose unpause
   ```

   **Resultado:**

   ```bash
   Unpausing service1 ... done
   Unpausing service2 ... done
   ```

   El comando `docker-compose unpause` reanudará la ejecución de todos los contenedores que fueron pausados anteriormente, restaurando su operación normal.

4. **Reanudar Contenedores Específicos**

   Al igual que con la pausa, puedes reanudar solo los contenedores de servicios específicos:

   ```bash
   docker-compose unpause web
   ```

   **Resultado:**

   ```bash
   Unpausing web ... done
   ```

   Esto reanudará el contenedor del servicio `web` mientras que otros contenedores permanecerán en su estado actual.

##### Consideraciones Importantes

- **Impacto en los Contenedores:** La pausa detiene los procesos en los contenedores, pero no libera recursos como la memoria y el almacenamiento. Los contenedores continúan ocupando espacio en disco y pueden seguir utilizando recursos de red.

- **Recuperación de Estado:** Cuando los contenedores se reanudan, los procesos y aplicaciones dentro de ellos continúan desde el punto en el que fueron pausados, sin pérdida de estado o datos.

- **Compatibilidad:** La funcionalidad de pausa y reanudación puede depender de cómo los contenedores y servicios están configurados y gestionados. Asegúrate de que los contenedores soporten esta funcionalidad para evitar problemas.

- **Uso en Entornos de Producción:** Usar `pause` y `unpause` en entornos de producción debe hacerse con cuidado, ya que puede afectar la disponibilidad de los servicios. Considera los posibles impactos en la experiencia del usuario y en el rendimiento del sistema.

##### Resumen

El comando `docker-compose pause` proporciona una forma de pausar temporalmente todos o algunos de los contenedores gestionados por Docker Compose, deteniendo la ejecución de procesos sin eliminar los contenedores. Este comando es útil para mantenimiento o actualizaciones que requieren detener servicios sin perder datos. Para reanudar los contenedores, se utiliza `docker-compose unpause`, restaurando la operación normal de los servicios.

#### `docker-compose restart`

El comando `docker-compose restart` reinicia todos los servicios gestionados por Docker Compose, deteniendo los contenedores en ejecución y luego iniciándolos nuevamente. Esto puede ser útil para aplicar cambios en la configuración o en el entorno que requieren que los servicios se reinicien.

##### ¿Qué Hace el Comando `docker-compose restart`?

1. **Reinicia Contenedores:**
   Detiene todos los contenedores asociados a los servicios definidos en el archivo `docker-compose.yml` y luego los vuelve a iniciar. Esto es útil para aplicar actualizaciones de configuración o resolver problemas que podrían requerir un reinicio.

2. **Mantiene Datos y Configuración:**
   Aunque los contenedores se detienen y se reinician, los datos y la configuración almacenados en volúmenes persistentes no se pierden. Los contenedores y servicios mantienen su estado y configuración después del reinicio.

##### Comando y Ejemplos

1. **Reiniciar Todos los Contenedores**

   Para reiniciar todos los contenedores definidos en el archivo `docker-compose.yml`, utiliza:

   ```bash
   docker-compose restart
   ```

   **Resultado:**

   ```bash
   Restarting service1 ... done
   Restarting service2 ... done
   ```

   Este comando detiene y reinicia todos los contenedores asociados a `service1` y `service2`.

2. **Reiniciar Contenedores Específicos**

   Puedes reiniciar solo los contenedores de servicios específicos. Por ejemplo, para reiniciar el servicio `web`:

   ```bash
   docker-compose restart web
   ```

   **Resultado:**

   ```bash
   Restarting web ... done
   ```

   Solo el contenedor asociado al servicio `web` será reiniciado.

##### Consideraciones Importantes

- **Impacto en el Servicio:** Reiniciar contenedores puede causar una breve interrupción en el servicio. Asegúrate de considerar el impacto en la disponibilidad de tu aplicación, especialmente en entornos de producción.

- **Uso con Cuidado:** El reinicio puede resultar en la pérdida temporal de la conectividad o en la interrupción de procesos. Evalúa si un reinicio es necesario y si hay alternativas para aplicar cambios.

---

#### `docker-compose stop`

El comando `docker-compose stop` detiene todos los contenedores que están ejecutándose en los servicios gestionados por Docker Compose. A diferencia del comando `docker-compose down`, `stop` no elimina los contenedores ni las redes asociadas; solo los detiene.

##### ¿Qué Hace el Comando `docker-compose stop`?

1. **Detiene Contenedores:**
   Detiene todos los contenedores asociados a los servicios definidos en el archivo `docker-compose.yml`. Los contenedores se mantienen en el sistema y pueden ser reiniciados sin necesidad de recrearlos.

2. **Mantiene Datos y Configuración:**
   Los datos y configuraciones persistentes se mantienen intactos. Puedes reanudar los servicios y los contenedores desde su estado detenido sin perder información.

##### Comando y Ejemplos

1. **Detener Todos los Contenedores**

   Para detener todos los contenedores en ejecución:

   ```bash
   docker-compose stop
   ```

   **Resultado:**

   ```bash
   Stopping service1 ... done
   Stopping service2 ... done
   ```

   Todos los contenedores asociados a `service1` y `service2` serán detenidos.

2. **Detener Contenedores Específicos**

   Puedes detener contenedores de servicios específicos. Por ejemplo, para detener el servicio `web`:

   ```bash
   docker-compose stop web
   ```

   **Resultado:**

   ```bash
   Stopping web ... done
   ```

   Solo el contenedor del servicio `web` será detenido.

##### Consideraciones Importantes

- **Impacto en el Servicio:** Detener contenedores puede interrumpir la disponibilidad de los servicios. Asegúrate de tener en cuenta el impacto en la experiencia del usuario y el funcionamiento de la aplicación.

- **Reinicio Necesario:** Los contenedores detenidos pueden ser reiniciados con `docker-compose start` sin necesidad de reconstruirlos.

---

#### `docker-compose rm`

El comando `docker-compose rm` se utiliza para eliminar los contenedores que están definidos en el archivo `docker-compose.yml`. A diferencia del comando `docker-compose stop`, `rm` elimina completamente los contenedores detenidos, liberando recursos y espacio en disco.

##### ¿Qué Hace el Comando `docker-compose rm`?

1. **Elimina Contenedores Detenidos:**
   Elimina todos los contenedores que están en estado detenido. Esto es útil para limpiar recursos no utilizados y mantener un entorno ordenado.

2. **No Afecta Datos Persistentes:**
   Los volúmenes persistentes asociados a los contenedores no se eliminan. Los datos almacenados en volúmenes persisten a menos que se eliminen explícitamente.

##### Comando y Ejemplos

1. **Eliminar Todos los Contenedores Detenidos**

   Para eliminar todos los contenedores detenidos:

   ```bash
   docker-compose rm
   ```

   **Resultado:**

   ```bash
   Going to remove service1, service2
   Removing service1 ... done
   Removing service2 ... done
   ```

   Los contenedores asociados a `service1` y `service2` serán eliminados.

2. **Eliminar Contenedores Específicos**

   Puedes eliminar contenedores específicos usando su nombre. Por ejemplo, para eliminar el servicio `web`:

   ```bash
   docker-compose rm web
   ```

   **Resultado:**

   ```bash
   Going to remove web
   Removing web ... done
   ```

   Solo el contenedor del servicio `web` será eliminado.

##### Consideraciones Importantes

- **Impacto en Datos:** Asegúrate de que los datos importantes no se almacenan solo dentro de los contenedores antes de eliminarlos. Los datos persistentes en volúmenes no se eliminan, pero los datos temporales dentro de los contenedores se perderán.

- **Uso con Precaución:** Eliminar contenedores es una operación irreversible. Asegúrate de que los contenedores ya no sean necesarios antes de eliminarlos.

---

#### `docker-compose down`

El comando `docker-compose down` detiene y elimina todos los servicios, contenedores, redes y volúmenes asociados a los servicios definidos en el archivo `docker-compose.yml`. Este comando es útil para limpiar completamente el entorno de Docker Compose.

##### ¿Qué Hace el Comando `docker-compose down`?

1. **Detiene y Elimina Contenedores:**
   Detiene todos los contenedores asociados a los servicios y luego los elimina. Esto incluye eliminar redes y volúmenes asociados, dependiendo de las opciones utilizadas.

2. **Elimina Redes y Volúmenes:**
   Por defecto, `docker-compose down` elimina las redes creadas por Docker Compose. Puedes usar opciones adicionales para eliminar volúmenes.

##### Comando y Ejemplos

1. **Detener y Eliminar Todos los Recursos**

   Para detener y eliminar todos los servicios, contenedores y redes asociados:

   ```bash
   docker-compose down
   ```

   **Resultado:**

   ```bash
   Stopping service1 ... done
   Stopping service2 ... done
   Removing service1 ... done
   Removing service2 ... done
   Removing network mynetwork
   ```

   Todos los contenedores, redes y volúmenes asociados serán eliminados.

2. **Eliminar Volúmenes Asociados**

   Para también eliminar los volúmenes asociados a los servicios:

   ```bash
   docker-compose down -v
   ```

   **Resultado:**

   ```bash
   Stopping service1 ... done
   Stopping service2 ... done
   Removing service1 ... done
   Removing service2 ... done
   Removing network mynetwork
   Removing volume myvolume
   ```

   Además de detener y eliminar contenedores y redes, también se eliminarán los volúmenes asociados.

##### Consideraciones Importantes

- **Impacto en Datos:** El uso de -v para eliminar volúmenes puede resultar en la pérdida de datos persistentes almacenados en los volúmenes. Asegúrate de que no haya datos importantes que necesiten ser respaldados antes de usar esta opción.

- **Uso para Limpieza Completa:** Utiliza `docker-compose down` para una limpieza completa de todos los recursos asociados a los servicios cuando ya no se necesiten.

- **Recreación del Entorno:** Después de ejecutar `docker-compose down`, el entorno debe ser recreado con `docker-compose up` si se desea reiniciar los servicios desde el principio.

## Estructura del fichero Docker-Compose

El fichero `docker-compose.yml` define la configuración de múltiples servicios y cómo deben interactuar entre sí. Su estructura básica se compone de las siguientes secciones:

### 1. **version**

Define la versión de la sintaxis de Docker Compose que se está utilizando. Esto determina qué características están disponibles en el archivo de configuración.

### 2. **services**

Contiene todos los servicios que se van a ejecutar, cada uno con su propia configuración.

#### Ejemplo Básico

```yaml
version: '3.8'
services:
  web:
    build: .
    ports:
      - "5000:5000"
    volumes:
      - .:/code
      - logvolume01:/var/log
    networks:
      - webnet
  redis:
    image: redis
    networks:
      - webnet
volumes:
  logvolume01:
networks:
  webnet:
```

> En este ejemplo:
>
> - `web` construye una imagen desde el Dockerfile en el directorio actual (`.`), expone el puerto 5000, y monta volúmenes locales.
> - `redis` usa la imagen oficial de Redis.
> - Ambos servicios están conectados a la red `webnet`.

---

### Construcción y Ejecución de Docker-Compose

Una vez que tienes el archivo `docker-compose.yml`, puedes construir y ejecutar tus servicios de la siguiente manera:

#### Construir y Ejecutar Servicios

```bash
# Construye y ejecuta los servicios definidos en el docker-compose.yml
docker-compose up

# Ejecutar en modo background (detached)
docker-compose up -d
```

> La opción -d ejecuta los servicios en segundo plano, liberando la terminal para otras tareas.

#### Construcción de Servicios

```bash
# Solo construir los servicios sin iniciarlos
docker-compose build
```

> Usar `docker-compose build` es útil para construir las imágenes antes de ejecutar los servicios.

---

### Listar Micro Servicios

Para ver el estado de los servicios definidos en tu archivo `docker-compose.yml`:

```bash
docker-compose ps
```

> Este comando muestra todos los contenedores que Docker Compose está manejando, sus estados, puertos expuestos, y más.

---

### Enlazar Contenedores, Servicios, Puertos y Variables

Un ejemplo más detallado de un archivo `docker-compose.yml` que enlaza servicios:

```yaml
version: '3.8'
services:
  wordpress:
    image: wordpress:latest
    environment:
      WORDPRESS_DB_HOST: dbserver:3306
      WORDPRESS_DB_PASSWORD: secretpassword
    ports:
      - "8080:80"
    depends_on:
      - dbserver
  dbserver:
    image: mariadb:latest
    environment:
      MYSQL_ROOT_PASSWORD: secretpassword
    ports:
      - "3306:3306"
networks:
  default:
    driver: bridge
```

> En este ejemplo:
>
> - `wordpress` se conecta al servicio `dbserver` usando la dirección `dbserver:3306`.
> - `depends_on` garantiza que `dbserver` esté disponible antes de iniciar `wordpress`.

---

### Volúmenes en Docker Compose

Los volúmenes permiten compartir datos entre el host y los contenedores o entre contenedores. Aquí hay un ejemplo detallado:

```yaml
version: '3.8'
services:
  web:
    image: nginx:alpine
    volumes:
      - type: volume
        source: mydata
        target: /data
        volume:
          nocopy: true
      - type: bind
        source: ./static
        target: /opt/app/static
    ports:
      - "80:80"
  db:
    image: postgres:latest
    volumes:
      - "dbdata:/var/lib/postgresql/data"
volumes:
  mydata:
  dbdata:
```

> En este ejemplo:
>
> - `mydata` es un volumen gestionado por Docker, montado en `/data` dentro del contenedor `web`.
> - `./static` es un directorio en el host montado en `/opt/app/static` dentro del contenedor `web`.
> - `dbdata` es otro volumen gestionado por Docker, utilizado por `db` para almacenar datos de PostgreSQL.

---

### Redes en Docker Compose

Configurar redes personalizadas puede ser crucial para entornos más complejos. Ejemplo:

```yaml
version: '3.8'
services:
  app:
    image: client
    container_name: client
    build: .
    ports: 
      - "80:3000"
    environment:
      - MONGO_URI=mongodb://mongo_db:27017/sample
    depends_on: 
      - db
    networks: 
      - net3
  db:
    image: mongo:3.0.15
    container_name: mongo_db
    volumes:
      - ./db:/data/db
    networks:
      net3:
        aliases:
          - "mongo_db"
          - "mongo_server"
        ipv4_address: 172.16.238.10
        ipv6_address: 2001:3984:3989::10
networks:
  net3:
    driver: bridge
    ipam:
      driver: default
      config:
        - subnet: 172.16.238.0/24
        - subnet: 2001:3984:3989::/64
```

> En este ejemplo:
>
> - `net3` es una red personalizada con configuración IP específica para `app` y `db`.
> - `db` tiene una dirección IP fija y nombres de alias para la resolución dentro de la red.

---

### Cambiar Nombre de Archivo y Proyecto de Docker-Compose

#### Ocupar Fichero Docker-Compose con Otro Nombre

```bash
docker-compose -f custom-compose.yml up
```

> Esto ejecutará el archivo `custom-compose.yml` en lugar del predeterminado `docker-compose.yml`.

#### Cambiar Nombre del Proyecto

```bash
docker-compose -p custom_project_name up
```

> Esto cambiará el nombre del proyecto para los servicios y contenedores, útil para evitar conflictos con otros proyectos.

#### Ejecutar con Nuevas Opciones

```bash
docker-compose -f custom-compose.yml -p custom_project_name up
```

> Combinando -f para especificar el archivo y `-p` para el nombre del proyecto.

#### Ver Lista con Nuevo Nombre de Proyecto

```bash
docker-compose -p custom_project_name ps
```

> Para listar los servicios con el nombre personalizado del proyecto.

---

## Docker Registry: Creación, Uso y Almacenamiento

**Docker Registry** es una herramienta esencial para quienes desean tener su propio repositorio privado de imágenes Docker, en lugar de depender de Docker Hub. Esto es especialmente útil para empresas o equipos que necesitan un registro interno de imágenes para mantener sus datos seguros y gestionados de forma centralizada.

Aquí profundizo en la creación, uso y almacenamiento de imágenes en Docker Registry, proporcionando ejemplos detallados y explicaciones de cómo configurar y manejar un registro privado.

---

### Crear un Registro de Imágenes

#### Descargar la Imagen del Registro

Para comenzar, necesitas descargar la imagen oficial de Docker Registry desde Docker Hub:

```bash
docker pull registry:latest
```

#### Crear un Contenedor de Registro

Una vez descargada la imagen, puedes crear y ejecutar un contenedor que actúe como tu registro privado. El puerto `5000` es el puerto predeterminado para Docker Registry, pero puedes elegir otro puerto si lo prefieres.

```bash
docker run -d -p 5000:5000 --name mi_registro registry
```

> **Nota:** Puedes cambiar `5000` por cualquier otro puerto disponible en tu sistema si lo necesitas.

---

#### Subir y Descargar Imágenes

##### Etiquetar la Imagen

Antes de subir una imagen a tu registro privado, necesitas etiquetarla para que apunte al registro correcto. La estructura del comando es la siguiente:

```bash
docker tag <nombre_imagen_local> <direccion_registro>:<puerto>/<nombre_imagen>
```

###### Ejemplo

```bash
docker tag ubuntu localhost:5000/nuevo-ubuntu
```

> **Nota:** No es recomendable usar `localhost` para un registro de producción; esto solo es útil para pruebas locales.

#### Subir Imagen al Registro

Para subir una imagen a tu registro privado, usa el comando `docker push` especificando la dirección del registro y el nombre de la imagen.

##### Ejemplo

```bash
docker push localhost:5000/nuevo-ubuntu:latest
```

> **Nota:** El tag por defecto es `latest`, pero puedes especificar otros tags si es necesario.

### Descargar Imagen del Registro

Para descargar una imagen de tu registro privado, usa el comando `docker pull` especificando la dirección del registro y el nombre de la imagen.

#### Ejemplo

```bash
docker pull localhost:5000/nuevo-ubuntu:latest
```

---

### Almacenamiento en Docker Registry

#### Ubicación Predeterminada del Almacenamiento

Por defecto, Docker Registry almacena las imágenes en el directorio de volúmenes de Docker:

```bash
/var/lib/docker/volumes/xxxxxxxxx/_data
```

Puedes verificar la ubicación de almacenamiento actual con el comando:

```bash
docker inspect mi_registro
```

#### Configurar Ubicación Personalizada del Almacenamiento

Si deseas que Docker Registry almacene las imágenes en una ubicación específica en tu sistema, puedes montar un volumen en el contenedor al crearlo.

##### Ejemplo

1. **Crear una Carpeta para el Almacenamiento**

   ```bash
   mkdir /mi_registro
   ```

2. **Crear y Ejecutar el Contenedor con el Volumen**

   ```bash
   docker run -d --name mi_registro -p 5000:5000 -v /mi_registro:/var/lib/registry registry
   ```

> **Nota:** En este ejemplo, `/mi_registro` es el directorio en tu sistema anfitrión donde se almacenarán las imágenes, y `/var/lib/registry` es el directorio dentro del contenedor donde Docker Registry guarda las imágenes por defecto.

---

#### Configuración Adicional y Recomendaciones

- **Seguridad:** Si tu registro se va a utilizar en un entorno de producción o accesible desde fuera de tu red local, asegúrate de configurarlo con HTTPS para asegurar la transmisión de datos.
- **Autenticación:** Puedes configurar autenticación básica o usar un servicio de autenticación externo para proteger el acceso a tu registro.
- **Backup:** Implementa estrategias de respaldo regulares para el directorio de almacenamiento para evitar la pérdida de datos.

**Conclusión:** Docker Registry te proporciona la flexibilidad de tener un registro privado para tus imágenes Docker, lo que es esencial para entornos corporativos o para gestionar imágenes sensibles. Configurarlo correctamente y mantener una buena práctica de seguridad y gestión es clave para aprovechar al máximo esta herramienta.

---

Espero que esta información te sea útil para implementar y gestionar un Docker Registry privado en tu entorno. Si tienes alguna pregunta adicional o necesitas más detalles, no dudes en preguntar.

## Kubernetes

🚧 **Work In Progress** 🚧

Este ítem está en desarrollo. Próximamente se añadirá información detallada sobre Kubernetes, incluyendo:

- **Introducción a Kubernetes**
- **Configuración y despliegue de clústeres**
- **Gestión de aplicaciones con Kubernetes**
- **Ejemplos de configuración y uso**

¡Mantente atento para actualizaciones!

### Contribuye

Si estás interesado en ayudar a completar esta sección o en mejorar cualquier parte del proyecto, ¡nos encantaría recibir tu colaboración! Puedes contribuir de las siguientes maneras:

1. **Enviando Pull Requests:** Si tienes experiencia con Kubernetes y quieres aportar contenido, correcciones o mejoras, puedes enviar un Pull Request (PR) a este repositorio. Asegúrate de seguir las [directrices de contribución](CONTRIBUTING.md).

2. **Abriendo Issues:** Si encuentras algo que te gustaría discutir o sugerir, abre un Issue en el repositorio. Puedes reportar problemas, hacer preguntas o proponer nuevas características.

3. **Revisando el Código:** Revisa el código existente y los cambios propuestos para asegurar que cumplen con los estándares del proyecto.

Consulta la sección [Cómo Contribuir](CONTRIBUTING.md) para obtener más detalles sobre el proceso de contribución.

Gracias por tu interés en mejorar este proyecto!
