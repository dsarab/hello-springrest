# hello-springrest

Proyecto de ejemplo de API REST con Spring Boot.
Incluye un Dockerfile que ilustra el concepto de multi-stage builds.

## Instrucciones

* Para construir la imagen

docker build -t hello-springrest:latest .

* Para lanzar el contenedor

docker run -it  --rm -p 8080:8080 hello-springrest:latest

