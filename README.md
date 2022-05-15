# DockerBootcamp2

Hoy hemos aprendido el a utilizar del docker registry y el docker compose.

Con Docker Registry podrémos crear nuestro propio Docker Hub, es decir, podremos tener nuestro propio repositorio de imágener Docker personalizadas. De esta manera podremos utilizarla para integrarlas en nuestro sistema y tener un control de la distribución de las mismas.

Tambien hemos aprendido el concepto de Docker Compose, es una herramiente con la cual a través se su archivo de configuración docker-compose.yml permite definir e integrar un conjunto de contenedores y por lo tanto ejecutar las aplicaciones que estos tienen intengradas y que guardan una relación entre sí.

Previamente habíamos realizado un reto que consistía en transladar el priceservice.jar para que funcionase con la BBDD de mysql. Para ello primeramente creamos una copia del priyecto de priceservices y le llamamos priceservice-mysql.
Después añadimos la dependencia de mysql al POM y modificamos el .yml para que utilice mysql y eurekaserver y compilamos el proyecto.
Lo siguiente sería crear un dockerfile con una instrucción FROM dirigido a Java 11 para disponer de la imagen de Java 11, la instrucción EXPOSE para indicar el puerto, la instrucción COPY para copiar el .jar de el directorio /target al directorio principal de cada micro, en este caso /priceservice-mysql (el cual creamos previamente) y por ultimo una instrucción CMD que ejecute en consola el .jar .
Pasamos el .jar de la carpeta /target a la carpeta base del proyecto, es decir /priceservice-mysql y buildeamos la imagen
Por último, creamos su correspondiente  docker-compose.yaml para poder utilizar priceservice junto con la BBDD de mysql y Eureka.  
Ahora solo faltaría ejecutar el docker-compose.yml a través del comando: "docker-compose up" y probar su funcionamiento con Postman.

Ahora sí pasamos al reto final. Este consistía en Dockerizar los micros que habíamos creado en la formación pasada de Spring.
Para conseguir esto hemos tenido que crear un dockerfile para cada micro (todos con el mismo contenido que el de priceservice ya que sólamente tenemos un .jar por directorio y no hace falta indicarle el nombre exacto del archivo) con el propósito de crear una imagen de estos a través de un build y crear un docker-compose.yml que ejecute todos los micros a la vez.

