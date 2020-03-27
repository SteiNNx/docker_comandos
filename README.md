# Docker

Docker sirver para crear contenedores ligeros y portables para las aplicaciones/software/webs se puedan ejecutar en cualquier maquina donde docker se encuentre instalado, independiente del sistema operativo que se este ejecutando en ese momento.

>Un contenedor es una "caja" donde se encontrara todo lo que la aplicacion necesita para poder ejecutarse, ademas de la propia aplicacion en si misma que se esta desarrollando.

## Imagen VS Contenedor

Docker sirve para distribuir "Maquinas".

* Imagen: Lo que se distribuye.
* Contenedor: Lo que se ejecuta.

Desde una misma imagen se puede crear multiples contenedores.

Ademas es posible generar dos tipos de contenedores, los cuales son:

* windows: no lleva kernel de linux, por lo cual solo es recomendable para aplicaciones que requieran ejecutarse exclusivamente en windows server o similar.

* Linux: incluye una capa del kernel de lix para ejecutar en cualquier sistema.

## Docker Servicio - Comandos

### Docker Exec

**Exec** es un comando de administracion de contenedores.

Permite ejecutar un comando sobre un contenedor que no posea entorno interactivo para trabajar, ejemplo:
```ps
docker exec ID/Nombre_Contenedor echo hola-mundo
```
El resultado de esto seria.
```t
# Ejemplo 1
[XXXX@XXX ~]# docker exec ubuntu echo hola-mundo
hola-mundo
# Ejemplo 2
[XXXX@XXX ~]# docker exec -it Nombre_Contenedor bash
```
>Este ejemplo se aplica a un contenedor que ya este en ejecucion.

### Docker Logs

Permite ver que esta imprimiendo en pantalla un contenedor que se encuentre en segundo plano(Background).

```ps
docker logs ID/Nombre_Contendor
```
>El unico problema del logs es que mostrara todo lo que ha realizado el contenedor

Para Ver ultimas lineas que esta ejecutando el contenedor, las que serian de importancia y evitar que muestre toda la informacion se ocupa el **--tail** mas el numero de lineas que desea ver.

Ejemplo
```
docker logs ID/Nombre_Contenedor --Tail N°_Lineas

docker logs 1234asd --Tail 20
```
>Mostrara las 20 ultimas lineas ejecutadas por el contenedor.

### Docker Top

Permite saber cual es el proceso que mas consume recursos dentro de un contenedor.

```
docker top ID/Nombre_Container
```

### Docker stats

Permite ver informacion sobre un contenedor, como uso de CPU y memoria, ademas de otras cosas.
```t
docker stats ID/Nombre_Contenedor
```

### Docker Inspect

Permite recuperar la informacion de una imagen o contenedor, a nivel de propiedades y caracteristicas.

```ps
docker inspect ID_Contenedor/Imagen
```
Este comando entregara mucha informacion por lo cual es recomendable enviar dicha informacion a un archivo, para su posterior inspeccion`.
```ps
docker inspect ID_Contenedor/Imagen > Nombre_Archivo.txt
```
>La informacion se entrega en formato **JSON**.

 o realizar una busqueda especifica como la direccion IP.
```ps
docker inspect --format='{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ID/Nombre_Contenedor
```
>La informacion que entrega es variada como la imagen con la cual el contenedor se genero, fecha de creacion, plataforma(linux-windows),su red, entre muchos otros.

### Docker image

Sirve para administrar imagenes, agrupa todos los comandos que tienen relacion con las imagenes y sus Opciones son las siguientes:

|Comando|Descripcion|
|:--:|:--:|
|build|Construir una imagen a partir de un Dockerfile|
|history|Mostrar el historial de una imagen||
|import|Importar el contenido de una tarball para crear una imagen del sistema de archivos|
|inspect|Mostrar información detallada sobre una o más imágenes|
|load|Cargar una imagen de un archivo tar o STDIN|
|ls|Listar imágenes|
|prune|Eliminar imágenes no utilizadas|
|pull|Extraer una imagen o un repositorio de un registro|
|push|Empujar una imagen o un repositorio a un registro|
|rm|Eliminar una o más imágenes|
|save|Guardar una o más imágenes en un archivo tar (transmitidas a STDOUT por defecto)|
|tag|Cree una etiqueta TARGET_IMAGE que haga referencia a SOURCE_IMAGE|

Se puede considerar una alternativa a ciertos comandos.
Ejemplo

|Opcion 1 | Opcion 2|
|:--:|:--:|
|docker image ls|docker images|
|docker image rm|docker rm|  

### Docker Container

Al igual que docker image, docker container agrupa todos los comandos relacionados con los contenedores.

**Comandos**

|Comando|Descripcion|
|:--:|:--:|
|attach|Conecte flujos de entrada, salida y error estándar locales a un contenedor en funcionamiento.|
|commit|Crear una nueva imagen a partir de los cambios de un contenedor.|
|cp|Copiar archivos/carpetas entre un contenedor y el sistema de archivos local|
|create| Crear un nuevo contenedor|
|diff|Inspeccionar cambios en archivos o directorios en el sistema de archivos de un contenedor|
|exec|Ejecutar un comando en un contenedor en ejecución|
|export|Exportar el sistema de archivos de un contenedor como un archivo tar|
|inspect|Mostrar información detallada sobre uno o más contenedores|
|kill|Matar uno o más contenedores en marcha|
|logs|Obtener los logs de un contenedor|
|ls|Listar Contenedores|
|pause|Pausa todos los procesos dentro de uno o más contenedores|
|port|Listar mapeos de puertos o un mapeo específico para el contenedor|
|prune|Retirar todos los contenedores parados|
|rename|Renombrar un contenedor|
|restart|Reiniciar uno o más contenedores|
|rm|Retirar uno o más contenedores|
|run|Ejecutar un comando en un nuevo contenedor|
|stats|Mostrar una secuencia en vivo de estadísticas de uso de recursos del contenedor(es)|
|stop|Parar uno o más contenedores en ejecución|
|top|Mostrar los procesos en ejecución de un contenedor|
|unpause|Despausa todos los procesos dentro de uno o más contenedores|
|update|Actualizar la configuración de uno o más contenedores|
|wait|Bloquear hasta que uno o más contenedores se detengan, luego imprimir sus códigos de salida|

Se puede considerar una alternativa a ciertos comandos.
Ejemplo

|Opcion 1 | Opcion 2|
|:--:|:--:|
|docker container ls|docker ps|
|docker container ls -a|docker ps -a|  

### Docker --help

En caso de necesitar ayuda para saber que hace un comando se agrega el **--help**.

Ejemplo
```t
[XXXX@XXX ~]# docker conainer ls --help

Usage:  docker container ls [OPTIONS]

List containers

Aliases:
  ls, ps, list

Options:
  -a, --all             Show all containers (default shows just running)
  -f, --filter filter   Filter output based on conditions provided
      --format string   Pretty-print containers using a Go template
  -n, --last int        Show n last created containers (includes all
                        states) (default -1)
  -l, --latest          Show the latest created container (includes all
                        states)
      --no-trunc        Don't truncate output
  -q, --quiet           Only display numeric IDs
  -s, --size            Display total file sizes
```

### Ejemplo Centos 7/Ubuntu 16
* __Docker status__(**systemctl status docker**): sirve para saber el estado de docker en la maquina.
* __Docker start__(**systemctl start docker**): arranca el servicio de docker(en linux).
* __Docker stop__(**systemctl stop docker**): detiene el servicio.
* __Docker enable__(**systemctl enable docker**): activa docker, en caso de reinicio del sistema este se ejecutara de manera automatica.
* __Docker --version:__ sirve para saber que version de docker se tiene instalada actualmente en la maquina.
* __Docker info:__ entrega multiples datos(Espacio, caracteristicas, etc), entre los cuales se destaca la cantidad de conetenedores e imagenes y el estado de estos.
* __Docker run__: cada vez que se ejecuta este comando, crea un nuevo contenedor, no recicla contenedores ejecutados previamente.

# imagenes

## Buscar imagen docker por CMD

con este comando se buscara y entregara una lista de imagenes que se encuentran en el HUB.
```ps
docker search NombreBuscar
```
>Retorna como maximo 25 resultados.

## Descargar imagen

para descargar una imagen del HUB de docker al entorno local se ocupa el siguiente comando.

```ps
docker pull NombreImagen
```

## Ver imagenes en repositorio local

para ver las imagenes desdecargadas que tenemos en nuestro equipo, se ocupa el siguiente comando.

```ps
docker images
```

## Ver IDs de las imagenes en repositorio local

Entregara una lista de todos los id de todas las imagenes que tengamos en el repositorio local de la maquina.
```ps
docker images -q
```

## Filtrar imagenes

Se aplica de manera similar que al filtrar los contenedores.

```ps
docker images -f
```

## Eliminar una Imagen

Para eliminar una imagen que se encuentre en nuestro repositorio local se eejcuta el siguiente comando:

```ps
docker rmi ID/Nombre_Contenedor
```
>**Importante**
>
>No es posible eliminar una imagen, si se creo un contenedor con dicha imagen. En resumen, si la imagen tiene asociada un contenedor, esta no podra eliminarse.
>
>En caso de querer borrar la imagen asociada, se debera eliminar primero el contenedor, que esta coupando dicha imagen. 
>
>Si aun asi se desea eliminar la imagen asociada, antes que el contenedor el comando se debe forzar con la bandera **'-f'**.

## Borrar todas las imagenes 

con este comando se eliminaran TODAS las imagenes que se tengan almacenadas, en el repositorio local.
```ps
docker rmi $(docker images -q)
```

## Historial cambios imagen

Para saber los cambios que ha sufrido una imagen en su proceso de construccion a lo largo del tiempo se puede ocupar:
```ps
docker image history Nombre_Imagen
```

# Contenedores

## Crear contenedor

Para crear un contenedor se ocupa el siguiente comando.

```ps
docker run nombre-Contenedor
```
> Un contenedor se inicia desde una imagen.
>
>Cada vez que se ocupa docker run se crea un nuevo contenedor, no reutiliza contenedores previamente ejecutados, aunque se ocupe la misma imagen.

* Ejemplo:

Al ejecutar el siguiente comando se creara un contenedor a partir de una imagen que especifiquemos con su respectivo nombre ejemplo "hello-world"(plantilla).

Si la imagen que especificamos no esta en nuestro "repositorio" de imagenes local, docker procedera a descargarla desde el HUB.docker

```ps
docker run hello-world
```

> Docker Hub es un registro online de imagenes.

## Crear contenedor con nombre

Para crear un contenedor con nombre se ocupa el comando **--name**, ejemplo:
```ps
docker run -it --name ubuntu_personal ubuntu bash
                      Nombre_Asignado Imagen
```

## Crear Contenedor Interactivo

Permite crear un contenedor interactivo si la imagen asi lo permite con el comando `-it`(**i** de interactivo, **t** de terminal), esto permite ingresar he interactuar con el contenedor(si este lo permite), ejemplo trabajar en la terminal de una imagen como ubuntu.

```ps
docker run -it ubuntu
```
>La imagen contiene una version minima de ubuntu.

## Crear contenedor en segundo plano (Background)

Para mantener en ejecucion un container en segundo plano, sin tener que mantener activa una ventana de comandos para interactuar con el(entorno interactivo).

```ps 
docker run -d nginx
```
>La opción -d ejecuta el contenedor en modo independiente. También es equivalente a -d=true.
>
>Un contenedor en modo independiente no puede ser removido automáticamente cuando se detiene, esto significa que no se puede usar la opción --rm en combinación con la opción -d.

## Crear contenedor con eliminado automatico

Para evitar que los contenedores detenidos se acumulen, esta la opcion que se eliminen de manera automatica, una vez finalizada su funcion, el cual es agregandole el **--rm** al comando.

```ps
docker run -it --rm --name Nombre_Contenedor Nombre_imagen
```
>Ingresara en modo interactivo y cuando uno salga de ese modo el contenedor se eliminara.

## Ingresar a contenedor en modo interactivo

Para ingresar a un contenedor que posea el modo interactivo y que ademas se ha creado con anterioridad y este en estado de detenido ejemplo, ubuntu,  se ejecuta el siguiente comando para iniciarlo y ingresar a esté. Asi no se creara un nuevo contenedor.

```
docker start -i ID_Contenedor
```
> Cuando el contenedor se detiene no se eliminan de manera automatica.

## Salir de un Contenedor sin detener ejecucion
para salir del container sin detenerlo y que asi pueda seguir ejecutandose se ocupa la siguiente combinacion de teclado.
```ps
Ctrl+P+Q
```

## Detener contenedor

Para detener un contenedor que se encuentre en ejecucion, se ocupa:
```ps
docker stop ID_Contenedor
```

## Detener todos los contenedores

para detener todos los conteendores que se encuentren en ejecucion, se ocupa lo sigueinte.
```ps
docker stop $(docker ps -a -q)
```
>Probado en PowerShell

## Ver contenedores en ejecucion

Para poder ver los contenedores que se estan ejecutando en la maquina se puede ocupar una de las siguientes opciones.

```ps
# Primera Opcion
docker container ls

# Segunda Opcion
docker ps
```

## Ver contenedores detenidos

Para ver los contenedores que estan creados pero al mismo tiempo detenidos se ocupa.
```ps
docker ps -a
```
> Los contendores al terminar de ejecutarse no se eliminan si no que pasan a un estado de detenido.
>
>Con este comando tambien se mostrara los que estan en ejecucion.

## Ver ultimo contenedor arrancado

se puede visualizar el ultimo contenedor que ha realizado una operacion.

```ps
docker ps -l
```

## Ver ultimos contenedores que se han ejecutado(cantidad)

Con esta opcion se podra ver los ultimos contenedores que han realizado alguna operacion, ademas se puede especificar la cantidad que se desea mostrar.

```ps
docker ps -n 4
```
>mostrara los ultimos 4 contenedores que hayan realizado alguna operacion.
>
>Este numero(4) se puede cambiar por cualquiera dependiendo de la necesidad.

## Ver IDs de containers

para visualizar solamente los ID, y asi poder crear operaciones automaticas

```ps
# Opcion 1
docker ps -a -q
# Opcion 2
docker ps -aq
```
>con esta opcion mostrara todas las IDs de los contenedores, independiente del estado en el que se encuentre.

## Ver tamaño del contenedor

Para poder ver el tamaño que ocupa un contendor en el sistema se ocupa el __-S__, en este caso, se presenta un ejemplo para ver el tamaño de los ultimos 3 contenedores.

```ps
docker ps -a -n 3 -s
```

## Filtrar lista de contenedores(--filter, -f)

Permite agregar una o mas opciones a la busqueda de contenedores, al momento de realizar una lista de estos.
A continuacion se muestran las opciones disponibles.

|Filtro|Descripcion|
|:--:|:--:|
|**`id`**| ID del contenedor|
|**`name`**| Nombre del contenedor|
|**`label`**| Una cadena arbitraria que representa una llave o un par llave-valor. Expresado como `<key>` o `<key>=<value>`|
|**`exited`**| Un número entero que representa el código de salida del contenedor. Sólo es útil con `--all`|
|**`status`**| 	uno de `created`, `restarting`, `running`, `removing`, `paused`, `exited`, o `dead`|
|**`ancestor`**| Filtra los contenedores que comparten una determinada imagen como ancestros. Expresado como `<image-name>[:<tag>]`, `<image id>`, o `<image@digest>`|
|**`before`** o **`since`**| Filtra los contenedores creados antes o después de una identificación o nombre de contenedor determinado |
|**`volume`**| Filtros que funcionan con contenedores que han montado un volumen determinado o un soporte de fijación|
|**`network`**| Filtros que funcionan con contenedores conectados a una red determinada|
|**`publish`** o **`expose`**| Filtra los contenedores que publican o exponen un puerto determinado. Expresado como `<port>[/<proto>]` o `<startport-endport>/[<proto>]`|
|**`health`**| Filtra los contenedores en función de su estado de salud. Uno de `starting`, `healthy`, `unhealthy` or `none`.|
|**`isolation`**| Sólo `daemon` de Windows. Uno de `dafault`, `process` o `hyperv`|
|**`is-task`**| Filtra los contenedores que son una "tarea" para un servicio. Opción booleana (`true` o `false`)

Para obtener una descripcion mas detallada revisar el siguiente [enlace filtros.](https://docs.docker.com/engine/reference/commandline/ps/#filtering)

Ejemplo con filtro `name`.

```ps
docker ps -a -f "name=XX"
```
>**XX** hace referencia al nombre del contenedor

## Eliminar un Contenedor

Para eliminar un contenedor que se encuentre detenido se ocupa el siguiente comando:

__Opcion 1__
```ps
docker rm ID_Contenedor
```
__Opcion 2__
```ps
docker rm Nombre_Contenedor
```

En el extraño caso que se desee eliminar un contenedor que este en ejecucion se debe forzar la eliminacion, mediante el siguiente comando:
```ps
docker rm ID_Contenedor/Nombre_Contenedor -f
```

### Eliminar todos los contenedores

Elimina todos los contenedores que hemos creado.

En windows(Powershell)
```ps
docker rm $(docker ps -a -q)
```


>Si tenemos algun contenedor en ejecucion se debe usar `-f`, para forzar la eliminacion o detener la ejecucion.

### Historial Cambios Contenedor
Para saber que cambios,instalaciones o modificaciones a sufrido un contenedor, condera los archivos y directorios.
```ps
# Opcion 1
docker diff Nombre_Contenedor
#Opcion 2
docker container diff Nombre_Contenedor
```
Los cambios se muestran con una letra al principio indicando que se le realizo:

* **A(Adicion)**: Para archivo nuevo.
* **C(Modificacion)**: Para archivo modificado.
* **D(Eliminado)**: Para archivo eliminado

# Puertos Docker

Los contenedores deben ser accesibles desde afuera del contenedor para poder utilizarse(una API por ejemplo o apache), para esto se ocupan los puertos, estos por defecto son privados y no es posible acceder a ellos, por lo tanto es necesario pasarlos a publico y mapearlo con un puerto del host/sistema que aloja el contenedor.

### Convertir puertos en publico

al iniciar un contenedor y que este tenga luspuertos en estado publico y no privado, que es por defecto se le agrega el **-P**, al comando.
```t
docker run -d -P nombre_imagen
```
>Al ejecutar el comando la "P" debe ser mayuscula o entregara un error.
>
>para confirmar que el puerto es publico, se ejecuta **docker ps** y mostrara una columna llamada **PORTS**.
>
>Con P(Mayuscula), docker se encargara de mapear los puertos, por lo tanto el numero será aleatorio y p(minusula) para indicar un puerto en especifico.

#### Explicacion Columna Ports

0.0.0.0:24312->80/tcp

* **0.0.0.0**: se podra acceder por cualquier direccion IP que posea el equipo. Este puede ser cambiado a una direccion especifica si se posee mas de una IP en el equipo.
* **24312**: Es el puerto del equipo que aloja docker, y el cual esta mapeado con el puerto 80 del contenedor.
* **80/tcp**: es el puerto del contenedor.

>Para acceder al contenedor que tenga habilitada esta configuracion, se agrega la siguiente direccion en el navegador **localhost:24312**. Si el contenedor fuera apache, nginx o similar.

### crear un contenedor con un puerto especifico

Los puertos que se generan en los contenedores  son aleatorios y parten del puerto 32768. Pero para poder tener un mayor control en este aspecto, es posible especificar este parametro, con el siguiente comando.
```t
docker run -d -p 8080:80 Nombre_Imagen
```
>Tambien es posible agregar un nombre personalizado al contenedor con **--name.**.
>
>docker run -d --name Nombre_personalizado -p 8080:80 nombre_imagen
>
>Con P(Mayuscula), docker se encargara de mapear los puertos, por lo tanto el numero será aleatorio y p(minusula) para indicar un puerto en especifico.

# Redes Docker

Por defecto mostrara 3 redes, previemente creadas, las cuales son;

 * __Bridge__: Es la red que utilizan los contenedores de manera predefinida(por defecto), a menos que se le indique lo contrario.
 * __Host__: los conteendores en est red solo podran ver e interactuar con el host principal, y no podran interactuar entre ellos. Se utiliza para contenedores aislados y que funcionen de manera independiente.
 * __None__: Es un contenedor que no tiene red y necesita una. Su driver es **null**.

La columna **SCOPE**, muestra si el funcionamiento de la red es de manera local, o conectada a otros equipos.

### Ver lista de redes en docker

Para ver todas las redes en docker, se ocupa lo siguiente:
```ps
docker network ls
```
### Obtener direccion IP de un contenedor

para obtener informacion mas especifica de los datos devueltos por inspect, se ocupa **--format**, y ocupa una plantilla de Golang.

```
docker inspect --format='{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' ID/Nombre_Container
```
> la funcion de ping para comprobar que el contenedor este en la misma red, no se encuentra disponible wn windows ni en mac.

Otra opcion para obtener la direccion IP, por ejemplo es.
```ps
# Estructura
docker inspect Nombre/ID_Contenedor | FindStr/grep Objeto_Buscar

# windows
docker inspect Nombre/ID_Contenedor | FindStr IPAd

#Linux
docker inspect Nombre/ID_Contenedor | grep IPAd
```
Para guardar la informacion de una inspeccion en un archivo seria de la siguiente manera.
```ps
docker inspect Nombre/ID_Contenedor > Nombre_Archivo.txt
```


### Obtener informacion detallada de una red

Entrega informacion detallada de una red seleccionada, similar al obtenido con inspect para los contenedores, ademas de incluir los contenedores que estan asociadas a la red.

```ps
docker network inspect Nombre_red
```
>Para obtener el nombre de la red, puede coupar el comando **docker network ls**
>
>Mostrara los contenedores que esten conectados y en ejecucion en la red que se esta inspeccionando.

### Crear nueva red

Para crear una red nueva en docker se ocupa.
```ps
docker network create Nombre_Red
```

>La red tipo bridge que uno crea posee mas caracteristicas que la que se encuentra por defecto en docker.
>
>Si no se especifica un driver en especifico en la red que se esta creando este sera del tipo **bridge**. Esto se puede cambiar con **--driver string**.

#### Crear red con rango subnet

La direccion de subnet es de ejemplo.
```ps
docker network create --subnet=192.168.0.0/16
```

### Asociar contenedor a red

Para ejecutar y asociar un contenedor a una red existente se ejecuta lo siguiente:
```ps
docker run -it --name Nombre_Contenedor --network Nombre_Red Imagen_Contenedor
```
>El **--network** es el que asocia el contenedor creado, con la red especificada.

Para asociar un contenedor que ya esta en ejecucion se ocupa lo siguiente:
```ps
docker network connect Nombre_Red Nombre_Contenedor
```
>Un contenedor puede estar conectado a multiples redes.

Para desconectar un contenedor de una red es:
```ps
docker network disconnect Nombre_Red Nombre_Contenedor
```
### Enlazar contenedor

Se puede enlazar de dos maneras.

* #### Bridge(Red por Defecto)

Una manera de realizar el enlace es mediante **--links**, aunque no es recomendable, ya que perdera soporte con el tiempo. Y es recomendable cuando se usa la red por defecto. 

#### Ejemplo 
Primero es necesario ejecutar un nuevo contenedor con una imagen que posea entorno interactivo
```ps
docker run -it --rm --name Nombre_contenedor Nombre_Imagen
```
Para saber que ip, posee el contenedor linux, se ocupa el siguiente comando
```t
[XXXX@XXX ~]# cat /etc/hosts
```
Para conectarlo finalmente se ocupa el siguiente comando.
```ps
docker run -it --rm --name Nombre_contenedor --link Nombre_contenedor_destino:alias_contenedor_destino Nombre_Imagen 
```

>* El --rm no es necesario de ser el caso, ya que al terminar de utilizar el contenedor este se eliminara automaticamente. Lo mismo para -it, es opcional.
>
>* Los conteendores que se desean enlazar deben poseer el **--name**, para facilitar el proceso.
>
>* Cuando se desea realizar para contenedores que esten en otra red, no es necesaria esta opcion.
>
>* Tambien se ocupa para comprobar que el entorno esta funcionando de manera correcta.
>
>* Si el contenedor no se creo con --link no podra reconocer el enlace a otros contenedores mediante el nombre o el alias, solo por la direccion IP. Osea es unidireccional en este modo.

* #### Red Perzonalizada

Para agregar un contenedor a una red personalizada se puede ocupar.
```ps
docker run -d --name Nombre_Contenedor --rm --network Nombre_Red Nombre_imagen
```
>El **--rm** es opcional, ayuda para no juntar contenedores detenidos.
 
Para poder acceder al contenedor:
```
docker exec -it Nombre_Contenedor bash
```

### Borrar Red

para borrar una red ya creada se ocupa.
```ps
docker network rm Nombre_Red
```
>No es posible borrar una red que tenga contenedores asociados.

# Volumenes en Docker

Es un componente de docker importante, por varias razones que se presentan a continuacion;

* Una de ellas y la mas importante es que ayuda a que la informacion de los contenedores sea **Persistente**.
* Permite respaldar o migrar informacion de manera facil.
* Estos funcionan en windows y linux por igual.
* Un volumen puede estar conectado a varios contenedores.
* Se puede agregar informacion a un volumen, por medio de un contenedor, antes que por un usuario.
* Los volumenes se administran mediante Docker.
* Se pueden usar y administrar de manera remota.

## Crear Volumen

Una forma sencilla de crear un volumen , es al momento de crear un contenedor.
```ps
docker run -it -v Carpeta_Volumen --name Nombre_Contenedor Nombre_Imagen bash
```
>La carpeta_volumen es donde guardara la informacion en el volumen, ejemplo **"/informacion"**.
>
>El lugar donde se crea, es por defecto docker/volumenes, pero puede perzonalizarse la ubicacion de ser necesario.

## Listar Volumen

Para ver la lista de volumenes creados se ocupa:
```ps
docker volume ls
```
>Se podra ver el driver y el nombre del volumen, si no se especifica este ultimo, se generara un codigo aleatorio para el nombre.

## Obtener informacion de volumen

Para obtener informacion relacionada al volumen deseado se ocupa lo siguiente;
```ps
docker volume inspect ID/Nombre_Volumen
```
>Se obtendra informacion, como fecha de creacion, tipo de driver, punto de montaje(direccion de carpeta que almacena los datos), el nombre, entre otros.

## Crear un directorio compartido(Carpeta)

Al crear un volumen la direccion que se genera de manera automatica no es la mas "sencilla" con la que se puede trabajar ejemplo:
```t
/var/lib/docker/volumes/XXXXXXXX000XXXXXXXXXXXX/_data
```
Asi que para compartir recursos(Archivos, Carpetas, Etc)entre la maquina que aloja los contenedores y los mismo contenedores, de manera sencilla es especificandolo desde el inicio al crear el contenedor, como se muestra a continuacion:

```ps
docker run -it -v Direccion_Maquina_Host:Direccion_Contenedor --name Nombre_Contenedor Nombre_Imagen

#Ejemplo
docker run -it -v /root/carpeta1:/carpeta1
```
>Es recomendable realizarlo al momento de crear un contenedor.

**Se asocia el directorio entre contenedor y la maquina que lo aloja, por lo tanto no se podria considerar un volumen esto se muestra como "HostConfig/Binds" al revisar los datos del contenedor**

## Compartir Volumen entre contenedor

para compartir un volumen entre dos contenedores.

Primero creamos el contenedor con el volumen, el cual vamos a compartir
```ps
docker run -it -v /datos --name Nombre_Contenedor Nombre_Imagen bash
```
Despues creamos el segundo contenedor, el cual se conectara al volumen del conteendor creado anteriormente:
```ps
docker run -it --name Nombre_Contenedor --volumes-from Nombre_Contenedor1 Nombre_Imagen bash
```
>El **contendor1**, es el contenedor ya creado al cual queremos acceder a su volumen con este segundo contenedor.
>
>Tambien es posible conectarse al ultimo contenedor creado que accedio a dicho volumen, en vez de hacerlo con el primer contenedor.

No es posible realizar esta accion directamente al volumen, es necesario que primero se encuentre un contenedor iniciado y conectado a dicho volumen para poder realizar esta accion.

## Crear Volumen de forma independiente(Nombre Personalizado, permiso de lectura, uso windows)

### Nombre Personalizado
En vez de ocupar un nombre que se genera de manera automatica, podemos ocupar uno personalizado creado por el usuario, de la siguiente manera:
```ps
docker volume create Nombre_Volume
```
Para asociarlo a un contenedor se ocupa como ejemplo lo siguiente:
```ps
docker run -it --name Nombre_Contenedor Nombre_Volumen:Nombre_Directorio Nombre_Imagen bash 
```
### Permiso Lectura
Para que un contenedor no pueda realizar modificaciones en un directorio y solo realice **lectura**, se le agrega `**:ro**` al Nombre_Directorio.
```ps
docker run -it --name Nombre_Contenedor Nombre_Volumen:Nombre_Directorio:ro Nombre_Imagen bash 
```
### Uso windows
Si se desea realizar lo mismo pero en windows, se ocupa de la siguiente manera:
```ps
docker run -it --name Nombre_Contenedor -v Nombre_Directorio:Nombre_Volumen Nombre_Imagen bash 
#Ejemplo
docker run -it --name ubuntu7 -v C:\\Users\\XXXX\\dir1:volumenDocker ubuntu bash
```
>En windows se debe ocupar la ruta completa, ademas de cambiar el **"/"** por **"\\\\"**
>
>Se debe tener la contraseña del equipo para que docker pueda acceder, ademas de los permisos en firewall.

## Borrar Volumen Especifico

Para borrar un volumen se ocupa:
```
docker volume rm ID/Nombre_Volumen
```
>Para poder eliminar exitosamente el volumen no puede terner asociado o que sea dependencia de un contenedor.

## Borrar volumen inactivos o no asociados

Para eliminar volumenes que ya no esten en uso por almenos un contenedor o hayan quedado sin haber sido eliminados.
```ps
docker volume prune
```
>Mostrara un mensaje de advertencia para confirmar la accion.

# Manipulacion de Imagen y Contenedor

## Modificar Imagen

Una de las primeras opciones a ocupar para crear una imagen es mediante la modificacione de conteendores.

Para modificar una imagen primero se tiene que crear un contenedor, a partir de la "imagen base", por ejemplo ubuntu:
```ps
docker run -it --name Nombre_Contenedor Nombre_Imagen bash
```
Al tener el contenedor ejecutando, posteriormente se instala los softwares requeridos/solicitados(/necesitados?), y al final al dejar el contenedor como se desea. 

## Crear Imagen
Para crear una imagen con un contenedor modificado se puede ahccer de manera automatica o manual, en este caso se mostrara la manera manual.
```ps
docker commit ID/Nombre_Contenedor Nombre_Nueva_Imagen:tag
```
>si no se especifica el tag, agregara **latest** de manera automatica.

# DockerFile

Es un archivo de configuracion que permite construir imagenes de manera automatica.

Esta formado por un conjunto de instrucciones, que contiene para construir la imagen.

Ejemplo Hello-Word
```ps
FROM scratch
COPY hello /
CMD ["/hello"]
```

## Crear imagen con Dockerfile

Para empezar se crea un archivo llamado `Dockerfile`(Se respera mayusculas).

Estructura basica:

* **FROM**: Carga la imagen Base/Inicial.
* **RUN**: Comando que se desea ejecutar.
* ****

>Dockerfile no puede poseer comando interactivo.
>
>

Ejemplo
```ps
FROM XXXXX
RUN apt-get update
RUN apt-get install -y XXXXX
```
Posteriormente se ejecuta lo siguiente para crear la nueva imagen.
```ps
docker build -t Nombre_Imagen:Tag .Directorio
# Ejemplo
docker build -t imagen_nueva .
```
>-t es para nombrar la nueva imagen
>
>El .Drectorio es donde puede encontrar la url donde esta el dockerfile o se desea copiar algo nuevo. Este debe estar en el directorio donde se encuentra dockerfile si solamente aparece un **.(punto)**. Ademas puede ser una direccion de internet.

En caso de estar en windows y crear un contenedor de linux mostrara la siguiente advertencia.

**ADVERTENCIA DE SEGURIDAD: Está creando una imagen de Docker desde Windows contra un host que no sea Docker de Windows. Todos los archivos y directorios añadidos al contexto de construcción tendrán permisos '-rwxr-xr-x'. Se recomienda volver a comprobar y restablecer los permisos de los archivos y directorios sensibles.**

## Comando RUN

Para ejecutar multiples comandos en una misma capa en la imagen se ocupa `&&`, ejemplo:

Dockerfile
```
FROM Ubuntu
RUN apt-get update
RUN apt-get install -y python
RUN echo 1.0 >> /etc/version && apt-get install -y git \
    && apt-get install -y iputils-ping
```
> Para los que no saben la **\\** sirve para que siga ejecutando la linea siguiente.

## Comando CMD

Permite indicar el comando por defecto del contenedor, Puede haber muchos **CMD** en un Dockerfile, pero el ultimo es el que cuenta, por lo tanto lo recomendable es tener **UNO** por Dockerfile.

En resumen sirve para iniciar un comando.

```ps
FROM XXXXX
RUN apt-get update
RUN apt-get install -y XXXXX
CMD XXXXXXXXXXXXXXXX

# Ejemplo
FROM XXXXX
RUN apt-get update
RUN apt-get install -y XXXXX
CMD echo "XXXXXXXXXXXXXX"
```
> El XXXXXXXX es el texto que podriamos ingresar y podra mostrar en la terminal.

Tambien permite colocar corchetes, para ejecutar como exec en vez de bash, en resumen formato **JSON**.
```ps
FROM XXXXX
RUN apt-get update
RUN apt-get install -y XXXXX
CMD [XXXXXXXXXXXXXXXX]

# Ejemplo
FROM XXXXX
RUN apt-get update
RUN apt-get install -y XXXXX
CMD ["echo", "Mensaje a Mostrar"]
```
>Esta ultima manera permite ejecutar como exec, para asi evitar posibles errores al ocupar un bash. Ademas se evita el tener que depender del bash de un conteendor, ya que es seguro que se pueda ejecutar exec de docker.

## Entrypoint

Es similar a CMD, ya que permite ejecutar algo cuando de inicia un contenedor, con la diferencia que el comando ejecutado con **entrypoint** se ejecutara siempre no es un comando "opcional", a diferencia de CMD.

Y al igual que CMD solo se puede tener uno por Dockerfile.

En el ejemplo se mostrara el dockerfile configurado para ambos casos.

Ejemplo Dokerfile CMD
```ps
FROM imagen
RUN apt-get update
RUN apt-get install -y ALGO
CMD ["/bin/bash"]
```
Ejemplo Dokerfile Entrupoint
```ps
FROM imagen
RUN apt-get update
RUN apt-get install -y ALGO
ENTRYPOINT ["/bin/bash"]
```

Ejemplo de ejecucion dockerfile
```ps
# Ejemplo CMD 
[XXXX@XXX ~]# docker run -it --rm Nombre_Imagen ls
bin dev home lib64 mnt proc run srv tmp sys etc

# Ejemplo ENTRYPOINT
[XXXX@XXX ~]# docker run -it --rm Nombre_Imagen df -h
/bin/df: /bin/df: cannot excute binary file
```
>**Con el CMD es posible sustituir el comando que se ingreso.**
>
>Como se explico entrypoint siempre ejecutara el comando que se le coloco.
>
>Se recomienda ocupar el modo exec(JSON), para ejecutar comando con entrypoint.

## Workdir

Este comando permite el poder determinar el directorio de trabajo para otros comandos ejemplo entripoint, run, etc.

Este comando puede estar multiples veces en un Dockerfile.

Ejemplo
```ps
FROM imagen
RUN apt-get update
RUN apt-get install -y ALGO
RUN mkdir /info
WORKDIR /info
RUN touch archivo1.txt
WORKDIR /info2
RUN touch archivo2.txt
ENTRYPOINT ["/bin/bash"]
```
Al crear el contenedor he ingresar a la bash, se encontrara en el ultimo directorio creado.
```t
[XXXX@XXX ~]# docker run -it --rm Nombre_Imagen
root@XXXXXXXXXXXX:/info2#
```

En resumen permite crear datos o componentes en carpetas especificas.

## COPY-ADD

### COPY

Permite copiar archivos de la maquina host a un contenedor.
Ejemplo
```vim
FROM imagen
RUN apt-get update
RUN apt-get install -y ALGO

##WORKDIR##
RUN mkdir /info
WORKDIR /info
RUN touch archivo1.txt
WORKDIR /info2
RUN touch archivo2.txt

##COPY##
COPY index.html .
COPY app.log /info

##ENTRYPOINT##
ENTRYPOINT ["/bin/bash"]
```
> el punto(.) en COPY hace referencia al ultimo directorio creado
>
>El primer COPY copia el archivo index.html en /info2 a eso se refiere el punto(.).
>
>El segundo COPY, copia el archivo app.log en la carpeta /info
>
>Copy acepta metacaracteres.

### ADD

copia o lleva ficheros o carpetas al contenedor. similar a COPY

```vim
FROM imagen
RUN apt-get update
RUN apt-get install -y ALGO

##WORKDIR##
RUN mkdir /info
WORKDIR /info
RUN touch archivo1.txt
WORKDIR /info2
RUN touch archivo2.txt

##COPY##
COPY index.html .
COPY app.log /info

##ADD##
ADD docs docs
ADD a* /info/
ADD f.tar .

##ENTRYPOINT##
ENTRYPOINT ["/bin/bash"]
```
>En el primer ADD cuando se coloca una ruta como docs es relacionada al ultimo workdir ejecutado(info2), en resumen si la carptea docs no se encuentra en la carpeta info2, creara dicha carpeta(/info2/docs) y copiara su contenido.
>
>En el segundo ADD agrega todos los archivos que empiecen con "a" a la carpeta designada en resumen acepta metacaracteres(a*)
>
>ADD a diferencia de COPY puede copiar el contenido de el archivo comprimido f.tar al directorio especificado.
>
>ADD tambien tiene la opcion de traer cosas desde una URL, ejemplo archivos.

## ENV

Es posible utilizar variables con ENV, a demas la manera mas simple de ocupar variables es al momento de crear un contenedor.

```ps
# Opcion 1
docker run -it --rm -v [Argumento] Nombre_Imagen
# Opcion 2
docker run -it --rm --env [Argumento] Nombre_Imagen

# Ejemplo 1
docker run -it --rm --env x=10 Nombre_Imagen
# Ejemplo 2
docker run -it --rm --env x=`pwd` Nombre_Imagen
```
>Es posible pasar comandos.

Ejemplo Ejecucion
```ps
[XXXX@XXX ~]# docker run -it --rm -e x=`pwd` Nombre_Imagen
root@XXXXXXXXXXXX:/info2#echo $x
/root/XXXXXXX
```
>XXXXXX Nombre carpeta aloja proyecto

En un archivo Dockerfile se podria hacer de la siguiente manera.
```ps
FROM ubuntu
RUN apt-get update
RUN apt-get install -y python
RUN echo 1.0 >> /etc/version && apt-get install -y git \
    && apt-get install -y iputils-ping

##WORKDIR##
RUN mkdir /info
WORKDIR /info
RUN touch archivo1.txt
WORKDIR /info2
RUN touch archivo2.txt

##COPY##
COPY index.html . 
COPY app.log /info

##ADD##
ADD docs docs
ADD a* /info/
ADD f.tar .

##ENV##
ENV dir=/datos dir1=/datos1
RUN mkdir $dir && mkdir $dir1

##ENTRYPOINT##
ENTRYPOINT ["/bin/bash"]
```
>Al revisar se podra ver las carpetas creadas y agregadas al registro env, del contenedor.

## ARG

Permite poner variables, es similar a env, pero arg permite recibir variables al momento de construir algo.
 ```ps
FROM ubuntu
RUN apt-get update
RUN apt-get install -y python
RUN echo 1.0 >> /etc/version && apt-get install -y git \
    && apt-get install -y iputils-ping

##WORKDIR##
RUN mkdir /info
WORKDIR /info
RUN touch archivo1.txt
WORKDIR /info2
RUN touch archivo2.txt

##COPY##
COPY index.html . 
COPY app.log /info

##ADD##
ADD docs docs
ADD a* /info/
ADD f.tar .

##ENV##
ENV dir=/datos dir1=/datos1
RUN mkdir $dir && mkdir $dir1

##ARG##
ARG dir2
RUN mkdir $dir2

##ENTRYPOINT##
ENTRYPOINT ["/bin/bash"]
```
>dir2 da un error al no tener un valor

Para solucionar el error generado por falta de informacion en dir2, se agrega dicha informacion faltante al momento de construir la imagen.
```ps
docker build -t Nombre_Imagen --build-arg dir2=/datos2 .
```
Con esto no va a generar error
> es posible pasar mas de una variable. Cada variable debe incluir el --build-arg

## EXPOSE

Permite exponer puertos, se le indica que un puerto en especifico es publico al crear una imagen. 
```ps
##EXPOSE##
RUN apt-get install -y apache2
EXPOSE 80
```
>Esto instala apache y le asigna el puerto 80.
>
>De igual manera al crear el contenedor se debe asignar el puerto ejemplo, `-p 8080:80`.

## VOLUME

Permite crear volumenes de manera automatica a traves del dockerfile.
```ps
##EXPOSE##
RUN apt-get install -y apache2
EXPOSE 80
ADD entrypoint.sh /info2

##VOLUME##
ADD paginas /var/www/html
VOLUME ["/var/www/html"]

##CMD##
CMD /info2/entrypoint.sh
```

>Comparte la misma direccion el volumen y el contenedor.
>
>Recordar que los volumenes son externos al contenedor

# Docker Hub

Es un repositorio de images donde encuentras imagenes creadas por empresas(repositorios oficiales) y otras creadas por usuarios.

## Subir imagen a Docker HUB

Para poder subir la imagen primero se agrega la cuanta con el siguiente comando.
```ps
docker login
```
Pedira la cuenta de usuario y su contraseña respectiva.
Al logearse correctamente aparecera `Login Succeeded`, y va a durar mientras este el terminal abierto o la coneccion funcionando.

Para subir imagen se ocupa `docker push`. Docker hub solicita un nombre "especial", para el repositorio al no ser una imagen oficial(ubuntu), por lo cual nuestra imagen seria.
```ps
docker image tag Nombre_imagen:TAG NombreUsuario/Nombreimagen:tag
```
con esto se cambia el nombre a uno adecuado para docker hub.
ejemplo
```ps
docker image XXXX:1 usuariodocker/XXXX:1
```
Posteriormente, se realiza el `docker push`
```ps
docker push usuarioDocker/Nombre_Imagen:TAG
```

# Docker Compose

Es un servicio que "orquesta" servicios o componentes, mediante un archivo llamado `docker-compose.yml` que contiene instrucciones para crear los enlaces entre contenedores que contengan servicios(Base de datos, BackEnd, FrontEnd, etc.).

En resumen, permite gestionar/simplificar una arquitectura de manera sencilla, ejemplo el Stack MEAN (MongoDB, Express, Angular, Nodejs).

## Instalar Docker Compose

Docker Compose ya esta instalado en windows, al instalar docker, para mac y linux se realiza manualmente, para mas detalles ver documentacion.

## Docker-compose - Comandos

### docker-compose up

Sirve para iniciar compose, con la configuracion del archivo `docker-compose.yml`
```ps
docker-compose up
```

### docker-compose ps

Entrega informacion similar a `docker ps`, muestra los contenedores que conforman un servicio y su estado
```ps
docker-compose ps
```

### docker-compose images

Permite ver las imagenes que se utilizan para los contenedores.
```ps
docker-compose images
```

### docker-compose config

Permite saber si el archivo `docker-compose.yml` es correcto.
```ps
# Muestra la informacion contenido dentro del archivo.
docker-compose config

# Muestra solo los errores.
docker-compose config -q

#Muestra los servicios del archivo.
docker-compose config --service
```
>Para ejecutarlo de manera correcta se debe estar en la carpeta donde se encuentra dicho archivo.

### docker-compose start

Permite iniciar los contenedores que componen un servicio.
```ps
docker-compose start
```

### docker-compose logs

Permite ver los logs(registros de sucesos que hizo el servicio incluye notas, warning, errores, etc.) de un servicio en especifico.

```ps
docker-compose logs Nombre_Servicio
```

### docker-compose top

Muestra los procesos mas pesados de un servicio.
```ps
docker-compose top Nombre_Servicio
```
### docker-compose pause

Se puede pausar de manera temporal, los contenedores y servicios que se esten ejecutando en docker.
```ps
docker-compose pause
```
Para volver a activarlos, se ocupa.
```ps
docker-compose unpause
```

### docker-compose restart

reinicia los servicios.
```ps
docker-compose restart
```
>Se debe ejecutar con cuidado ya que es posible que pierda, servicios.

### docker-compose stop

Para detener los servicios que actualmente se ejecutan en compose.
```ps
docker-compose stop
```

### docker-compose rm

Sirve para eliminar servicios que se esten ejecutando en compose.
```ps
docker-compose rm
```

### docker-compose down

Detiene los servicios, ademas borra los servicios, contenedores, redes. Para eliminar los volumenes asociados al servicio que se estaba ejecutando, se ocupa `docker volume prune`.

## Estructura fichero Docker-Compose

El fichero `docker-compose.yml` consta de una estructura que similar a la siguiente.

* __Servicio:__ Es para especificar la version de docker donde se lanzara docker-compose.
* __Services:__ Se colocan todos los servicios que contendra compose, con un nombre que pueda ser identificable. Todos los servicios que se agregen al `docker-compose` deben tener el comando 'build' o 'images'

Ejemplo
```txt
version: '3'
services:
      web:
         build: .
         ports:
         - "5000:5000"
         volumes:
         - .:/code
         - logvolume01:/var/log
         links:
         - redis
      redis:
          image: redis
volumes:
  logvolume01: {}
```
> El punto en **build** es la ubicacion del dockerfile, en este caso se encuentra en la misma carpeta que el docker-compose.
>
>**Link** al igual que en los contenedores es para unirlo a una red especifica.

## Construir Docker-Compose(Construir servicios)

Primero se crea el archivo `docker-compose.yml` con las instrucciones.
Ejemplo
```
version:'3'
services:
  nginx:
  image: nginx:stable-alpine
  ports:
  - "80:80"
```
Despues se construye con el comando
```ps
# Construir servicios
docker-compose up
# Modo Background
docker-compose up -d
```
>Se recomienda ejecutarlo en modo background con el comando `-d`
>Docker Compose va a crear una red nueva por defecto si no se le especifica.

## Listar micro servicios

Al igual que con los contenedores uno puede listar los micro servicios de docker-compose, con el siguiente comando.
```ps
docker-compose ps
```

## Enlazar contenedores, servicios, puertos y variables.

Se creara un micro servicio, mas completo.

Ejemplo
```docker
version: '3'
services:
  wordpress:
    image: wordpress
    environment:
      WORDPRESS_DB_HOST: dbserver:2222
      WORDPRESS_DB_PASSWORD: 123456
    ports:
      - 8080:80
      depends_on:
      - dbserver
  dbserver:
    image: mariadb:latest
    environment:
      MYSQL_ROOT_PASSWORD: 123456
    ports:
      - 2222:2222
```
> dbserver en **`WORDPRESS_DB_HOST`** es el nombre del servicio de la base de datos mariadb, configurada mas abajo.
>
>Con **`depends_on`** se le indica como se inician los contenedores, en este caso wordpress tiene una dependencia de **dbserver**, por lo cual este ultimo inicia primero.
>
>Docker construira una red personalizada para los contenedores sin necesidad de indicarlo, esto sucede en las ultimas versiones de docker. En caso contrario se tendra que ocupar el **`--link`**.

Estructura:

* __Servicios:__ Son los contenedores que se crean, basados en las especificaciones que se entregan.
  * __wordpress__
  * __dbserver__
* __Puertos:__ Puntos de coneccion, salida y entrada de datos de los contenedores.
  * __wordpress__ - puerto 80 (dependen del servicio dbserver)
  * __dbserver__ - puerto 3306
* __Enviroment:__ Son las variables que se le pueden entregar a las imagenes al momento de generar el contenedor.

Comando para ejecutar el archivo de `docker-compose.yml`
```ps
docker-compose up
```
Posteriormente acceder a `localhost:8080`

## Volumenes en Docker Compose

Los volumenes en docker-compose, funcionan igual que en docker normal. La unica diferencia son los comandos y la manera en la que se manejan.

Ejemplo:
```vim
version: "3.2"
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
      - 80:80
  db:
    image: postgres:latest
    volumes:
      - "/var/run/postgres/postgres.sock:/var/run/postgres/postgres.sock"
      - "dbdata:/var/lib/postgresql/data"
volumes:
  mydata:
  dbdata:
```
>volumen de nombre **mydata** esta asociado a la carpeta del volumen **/data**.
>
>volumen de tipo bind **./static** (el punto es donde esta docker-compose donde tendra una carpeta llamada static) es una carpeta en el equipo principal que estara escaneada que esta asociado/compartido con el directorio **/opt/app/static** que esta dentro del contenedor. Este es directorio completo.
>En resumen, el contenido de las dos carpetas es identico.
>
>En la primera opcion se mapea el socket del equipo que aloja docker con el socket del contenedor
>
>En el segundo dbdata(del equipo principal) esta mapeado con **/var/lib/postgresql/data** del contenedor. Este ultimo es nombre de volumen.

Para acceder al servicio web se puede ocupar.
```ps
docker-compose exec web sh
```

Estructura:
* __volumes:__ es la seccion de `docker-compose` donde se entregan las instrucciones para la crecion de los volumenes en un servicio.
* __type:__ Es donde se indica si es de typo **volume** o de tipo **bind**, la diferencia es que con volumen se crea un volumen especifico, en una ubicacion por defecto(**/var/...**) y el **bind** asocia una determinada carpeta del contenedor con una carpeta del equipo principal(host o maquina que aloja docker).
* __volume:__ es donde se pueden colocar algunas opciones en este caso **nocopy:true**, el cual permitira que el contenedor no sea copiado.
* __Volumes:__ Se declaran los volumenes que se han creado para confirmar cuales son los volumenes.

## Redes en Docker Compose

Creacion y configuracion de un stack con docker-compose, mostrando algunas opciones disponibles en la seccion de red.

Ejemplo
```ps
version: '3.3'

services:
  app:
    image: client
    container_name: client
    build: .
    ports: 
      - 80:3000
    environment:
      - MONGO_URI=mongodb://mongo_db/sample
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
      -
        subnet: 172.16.238.0/24
      -
        subnet: 2001:3984:3989::/64
```

Estructura:
* Servicio APP:
  * __Image:__ nombre de la imagen que se va a crear.
  * __Container_image:__ Nombre del contenedor
  * __Build:__ es para especificar que construya la imagen, a partir del dockerfile que se encuentra en la misma carpeta(por eso el punto).
  * __Ports:__ los puetos de acceso, en este caso el puerto 80 del host, se conecta al puerto 3000 del contenedor.
  * __Environment:__ es una variable de entorno que solicita la imagen, en este caso MONGO_URI, que apunta a la base de datos, en este caso la direccion proviene del nombre del contenedor de la base de datos.
  * __Depends_on:__ son dependencias o requisitos previos para la ejecucion del contenedor en este caso que la base de datos se ejecute primero.
  * __Networks:__ Se indica que red se va a ocupar, que va a ser propia y no generada de manera automatica. Su configuracion va a ser por defecto

* Servicio DB:  
  * __Volumes:__ se crea un volumen mapeado `./db`:`/data/db`
  * __Networks:__ el net3 no llevara guion, ya que llevara una mayor configuracion. ya que llevara propiedades especificas.
  * __Aliases:__ Es un nombre alternativo para el servicio dentro de la red, es el nombre con el que se va a reconocer el  servicio dentro de la red.
  * __ipv4_address/ipv6_address:__ Ip fija para el servicio.

* Networks: Configuracion de la red que se va a ocupar.
  * __net3:__ es el nombre de la red.
  * __driver:__ bridge(predefinido), none.
  * __enable_ipv6:__ es para habilitar la opcion de ipv6 en una version anterior a 3.3 de docker compose, si se cumple una version posterior a 3.3, esta la opcion de eliminar.
  * __ipam:__ sirve para configurar una subred de ipv4/ipv6. Si se ocupan ip fijas en los servicios es obligatorio el ipam para poder configurar y que funcionen las redes a ocupar.
    * __driver:__ el driver de la subred, en este caso la opcion es default.
    * __config:__ contiene las ip de la subnet de la red, de la ipv4 y ipv6.

## Cambiar Nombre de Archivo y Proyecto de docker-compose

### Ocupar fichero docker-compose con otro nombre

Para personalizar el nombre de docker compose basta con renombrar el archivo y ejecutar el siguiente comando:
```ps
docker-compose -f Nuevo_Nombre_Archivo.yml
```

### Cambiar nombre Proyecto

Al ejecutar docker-compose siempre ocupara el nombre del la carpeta que contiene los archivos, en caso de querer cambiarlos se puede ocupar lo siguiente
```ps
docker-compose -p Nombre_Proyecto
```

### Ejecutar de manera correcta nuevo docker-compose

Para ejecutar docker-compose con las nuevas opciones mostradas anteriormente, se ejecuta de la siguiente manera.
```ps
docker-compose -f Nuevo_Nombre_Archivo.yml -p Nombre_Proyecto up
```
>agregar -d si se desea ejecutarlo en modo background

### Ver lista con nuevo nombre de proyecto

Al momento de ejecutar `docker-compose ps`, no deberia mostrar nada si se ocupo el `-p`, ya que buscara los servicios que contengan el nombre de la carpeta, que contiene el archivo. para poder ver estos servicios con nombre personalizado se ejecuta de la siguiente manera.
```ps
docker-compose -p Nombre_Proyecto ps
```
este cambio se aplicara a la mayoria de los comandos de docker-compose, por lo tanto se le debe agregar `-p Nombre_proyecto` para poder ejecutar de manera correcta, dichos comandos. Si no se realiza de esta manera, volvera a bsucar con el nombre de la carpeta contenedora del archivo.

# Docker Registry

Es una "alternativa" a hub.docker.com, el cual permite crear nuestro propio repositorio de imagenes __privado__, esto permite la posibilidad de poder usarse a nivel de empresas, en su propia red privada.

Por lo tanto permite crear multiples registros, el cual cada uno sera un "hub" privado. Ademas cada uno de los registros puede almacenar imagenes diferentes dependiendo de las necesidades.

## Crear registro de imagenes

Para crear un registro es necesario descargar la imagen `Registry` de docker hub, y ejecutar un contenedor con este.

Descargar imagen
```ps
docker pull registry:latest
```

Crear contenedor
```ps
docker run -d -p 5000:5000 --name Nombre_Contenedor registry
```
>El numero del puerto es modificable a gusto del usuario.

## Subir/Bajar imagen a un registro

Es similar a subir una imagen a docker hub, con la diferencia que en vez de colocar nuestro usuario, colocamos la direccion/Nombre Equipo y puerto del registro.

### Crear Tag
Como requisito previo al igual que en HUB, es necesario ocupar `docker tag`.

Ejemplo
```ps
# Estructura
docker tag Imagen_Etiquetar Direccion/Nombre:Puerto/Nombre_Imagen
# Ejemplo
docker tag ubuntu localhost:5555/nuevo-ubuntu
```
>No es recomendable ocupar localhost, solo referencia para ejemplo.
>
>para buscar la imagen es `docker images Nombre_Imagen` ejemplo `docker images localhost:5555/*` y mostrara todos las imagenes que esten en el registro.

### Subir imagen
Ejemplo subir imagen a registro
```ps
# HUB Docker
docker push nombre_usuario/nombre_imagen:tag
# Registro
docker push Direccion/NombreMaquina:Puerto/Nombre_Imagen:tag
# Ejemplo "Real"
docker push localhost:5555/nuevo-ubuntu:latest
```
>Docker sabra a que repostiorio subira la imagen. por lo tanto no es un dato que pida.
### Descargar imagen

Es igual como a cualquier imagen.
```ps
docker pull nombre_usuario/nombre_imagen:tag
# Registro
docker pull Direccion/NombreMaquina:Puerto/Nombre_Imagen:tag
# Ejemplo "Real"
docker pull localhost:5555/nuevo-ubuntu:latest
```
>El tag por defecto es latest.

## Almacenamiento Docker Registry

Registry al igual que cualquier imagen de docker, se puede especificar la opcion de donde se almacena la informacion de la imagen, con el volumen.

Por defecto es donde docker guarda los volumenes
```ps
/var/lib/docker/volumes/xxxxxxxxx/_data
```
>para saber la direccion y mas informacion se ocupa `docker inspect Nombre_imagen`

Para dejar las imagenes en un lugar especifico, se realiza lo mismo que en cualquier imagen.
```ps
# crear carpeta
mkdir /Nombre_carpeta_equipo_local
# Comando para crear contenedor con volumen relacionado
docker run -d --name Nombre_Contenedor -p 5000:5000 -v /Nombre_carpeta_equipo_local:/Nombre_carpeta_equipo_local Nombre_Imagen

# Ejemplo

mkdir /Registros

docker run -d --name registro_ejemplo -p 5000:5000 -v /Registros:/var/lib/registry registry
```
> __"Destination"__ es el que contiene la direccion `/var/lib/registry`, en la informacion del contenedor, y es donde por defecto registry guarda las imagenes.

# Docker Swarm

Permite crear un cluster de multiples nodos docker, permitiendo disponer de manera replicada, los "servicios"(Componente que se replica) que creamos, en varios nodos del cluster. Ademas de funcionar de manera independiente.
>Cada nodos es un entorno como vps, server dedicado o similar.

* Servicios Swarm: El servicio es en resumen un contenedor que se esta ejecutando, como cuando se inicia un docker-compose y se especifican los servicios.

## Crear Cluster (Docker Swarm)

>No es posible colocar mas de un nodo dentro de un equipo (fisico, vps, etc.).
>
>No es posible mas de un nodo en un equipo ya que es necesario, una direccion IP.

El siguiente comando:
```ps
docker swarm
```
>permitira la gestion del cluster.
```ps
docker services
```
>Permite crear servicios y tareas dentro del cluster.

Finalmente para crear un Cluster se ocupa lo siguiente:
```ps
# Inicio Normal
docker swarm init

# Inicio al poseer multipes IP
docker swarm init --advertise-addr xxx.xxx.xx.xxx
```
>Cambiar las X por la direccion IP seleccionada.
>
>Inicia un nuevo cluster, y asigna el equipo como maetro, ademas de entregar un token, que permite unir los equipos esclavos al maestro.
>
>En caso de que se inicie en una VM(Ya que se dispone de multiples IP), se le debe asignar la direccion IP para iniciar correctamente.
>
>Para evitar problemas iniciar swarm en equipos con IP estaticas, no dinamicas.

Al ejecutar el comando entregara la siguiente informacion:
* Mostrará que es manager(maestro) o esclavo.
* entregara el comando con el cual se podra agregar un worker, un equipo esclavo al maestro, este incluye un token.

Se recomienda copiar el comando incluyendo el token, en caso de perderse, se puede obtener con el comando presentado a continuacion:
```ps
docker info
```
Donde mostrara, que docker swarm esta activado, ademas de algunas otras opciones como las siguientes:
* NodeID
* Is Manager
* ClusterID
* Managers
* Nodes
* workers
>El swarm que esta como maestro(manager), tambien se puede ocupar como worker(esclavo). **NO SE RECOMIENDA**

Finalmente, en caso de perder el comando se ocupa:
```ps
docker swarm join-token worker
```

## Añadir nodos

Para ver la informacion relacionada a los nodos se ocupa `docker info` en la seecion swarm.

### Nodo 1 (Manager/Maestro)
Para añadir los nodos primero se debe iniciar el docker swarm con la direccion IP, especifica en caso de poseer mas de una, en el PRIMER nodo a ocupar.
```ps
# Inicio general
docker swarm init
# Inicio con IP especifica
docker swarm init --advertise-addr xxx.xxx.xx.xxx
```
>Reemplazar las X con los numeros de la direccion IP.

Se copia el `docker swarm join --token XXXX`(Las XXXX son el resto de la informacion del token).

### Nodo 2 o posterior(Worker/Esclavo)

En los nodos que desea unir al primero se debe tener docker instalado y agregar el `docker swarm join --token XXXX` que se obtuvo previamente.

Al realizar, el ingreso anterior se mostrara el mensaje `This node joined a swarm as a worker`, confirmando la union al primer nodo.

## Trabajar con Nodos/Cluster

Para poder trabajar de manera comoda y obtener mejor informacion, en vez de ocupar el comando `docker info`, se ocupa el `docker node`, con el cual permitira algunas de las siguientes opciones:

* Listar/Ver nodos de un cluster.
* Inspeccionar uno o mas nodos.
* Promover un nodo a `Manager` desde el modo `Worker`

### Comandos Nodo

#### Docker node ls

permite listar los nodos worker que estan unidos al manager, entregando la siguiente informacion.
* ID (Numero de identificacion unico)
* HOSTNAME (Muestra lso nombres del nodo, ejemplo nodo1, nodo2)
* STATUS
* AVAILABILITY
* MANAGER STATUS 
* ENGINE VERSION

#### Docker node inspect

para saber la informacion de un nodo especifico se ocupa.
```ps
docker node inspect HOSTNAME

# Ejemplo
docker node inspect nodo2
```
>HOSTNAME es el numero del nodo, ejemplo nodo 3.

Para obtener la informacion que entrega mas ordenada y no en formato **JSON**.
```ps
docker node inspect --pretty HOSTNAME
```

#### Docker node promote

Para administar los manager(puede existir mas de uno), y colocar otro nodo existente como lider, ejemplo en caso de que se caiga el servicio.

```ps
docker node promote HOSTNAME
# Ejemplo
docker node promote node6
```
> Promueve el nodo6 a manager.
>
> En el caso de que se promueva un nodo(Que seria el segundo nodo o posterior), posteriormente ademas del nodo lider(El inicial el cual en el status manager aparecera como **Leader**), este aparecera como **Reachable**(Alcanzable), esto confirma que en caso de que el primer nodo que esta como lider se caiga, o se le quite su status de Leader, el nodo6 tendra el control.
>
> -->docker node ls
>
>|HOSTNAME|MANAGER STATUS|
>|:--:|:--:|
>|nodo1|Leader|
>|nodo2|      |
>|nodo3|      |
>|nodo4|      |
>|nodo5|      |
>|nodo6|Reachable|

#### Docker node Demote

Quita el privilegio de manager de un nodo y lo pasa a worker.
```ps
docker node demote HOSTNAME 
# Ejemplo
docker node demote node1
```
>En caso de quitar un nodo de lider, este no aceptara comandos ya que no posee los privilegios (en este caso, **Leader**), por lo tanto uno debe conectarse al nodo lider, que este disponible(con `docker node ls` se puede saber quien es el lider).
>
> -->docker node ls
>
>|HOSTNAME|MANAGER STATUS|
>|:--:|:--:|
>|nodo1|      |
>|nodo2|      |
>|nodo3|      |
>|nodo4|      |
>|nodo5|      |
>|nodo6|Leader|

#### Docker Swarm leave

Este comando sirve para que un nodo determinado se de, dé baja de un cluster existente.
```ps
docker swarm leave
```
>Este comando es necesario que se ejecute en el nodo, el cual se desea dar de baja del cluster.
>
>No sale del cluster solo, se da de baja, pero posteriormente es posible ingresarlo con el comando JOIN.
>
>|HOSTNAME|STATUS|
>|:--:|:--:|
>|nodo1|Ready|
>|nodo2|Down|

#### Docker node rm

Sirve para sacar un nodo de manera permanente de un cluster existente.

```ps
docker node rm HOSTNAME
# Ejemplo
docker node rm nodo3
```
>En caso, de querer añadir nuevamente el nodo al cluster, se ocupa **docker swarm join-token `worker/manager`**(Se puede elegir como se desea agregar un nodo a un cluster **`worker/manager`**), en el nodo lider y asi obtener el token(el comando completo, el cual se pegara y ejecutara en el nodo a agregar), en el nodo que se desea agregar.

## Servicios (Docker Swarm)

Para trabajar con servicios se utiliza `docker service`. Y se deben ejecutar en el nodo **Leader**. Ya que otros nodos no permitiran su ejecucion.

### Crear servicio (docker service create)

Crear un servicio se utiliza el comando:
`docker service create`.

Pero es posible personalizar el servicio desde la linea de comando al crear dicho servicio.

```ps
docker service create --replicas N° --name NOMBRE_SERVICIO IMAGEN_DOCKER COMANDO_EJECUTAR

# Ejemplo
docker service create --replicas 1 --servicio0 alphine-linux ping google.com
```

Descripcion:
* __--replicas__: es la cantidad de veces que el servicio se ejecutara en los nodos disponibles.
* __N°__: Es el numero de replicas, con el cual se ejecutara.
* __--name__: El nombre que llevara el servicio el cual se va a crear.
* __Imagen_Docker__: La imagen "base" que se ocupara para el servicio.
* __Comando__: Lo que se ejecutara en la imagen del servicio. 

### Ver servicios (Docker Service ls)

Para ver los servicios que estan en ejecucion se utiliza:
`docker service ls`.

|ID|NAME|MODE|REPLICAS|IMAGE|PORTS|
|:--:|:--:|:--:|:--:|:--:|:--:|
|xxxXXxxx|Servicio0|Replicated|**1/1**|alphine-linux||

### Ver Informacion Servicio especifico (docker service ps)

Para Sirve para ver mas informacion de un servicio en especifico como el nodo en el que se encuentra, hace cuanto tiempo se creo dicho servicio, etc.
```ps
docker service ps NOMBRE_SERVICIO
# EJEMPLO
docker service ps Servicio0
```

### Ver Informacion sobre ejecucion de un servicio (docker service logs)

Para poder ver lo que ha realizado un servicio en ejecucion, se debe obtener el log de dicho servicio, con el siguiente comando:
```ps
docker service logs NOMBRE_SERVICIO
# Ejemplo
docker serveice logs Servicio0
```

### Ver toda la informacion relacionada a un servicio (docker service inspect)

funciona como cualquier otro inspect.
```ps
docker service inspect --pretty Nombre_Servicio
```
>--pretty sirve para ver de manera mas ordenada la informacion que se entrega.

### Escalar Servicio

para escalar, replicar o repetir un servicio, se ocupa:
```ps
docker service scale Nombre_Servicio=Nuevo_N°_Replicas

# Ejemplo
docker service scale Servicio0=3
```
>cada vez que se inicia un servicio este es una tarea.
>
>Solo se puede escalar el servicio el numero de nodos, mientras los recursos lo permitan.
>
>Si no posee recursos suficientes, entregara un error.

Si se desea disminuir el numero de replicas se vuelve a ejecutar el comando anterior con un nuevo numero de replicas, pero en este caso un N° inferior.
```ps
docker service scale Service0=1
```

### Borrar un servicio

Para borrar un servicio se ocupa:
```ps
docker service rm Nombre_Servicio

# Ejemplo
docker service rm Service0
```



