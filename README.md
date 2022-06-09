# hello-springrest

Proyecto de ejemplo de API REST con Spring Boot.
Incluye un `Dockerfile` que ilustra el concepto de multi-stage builds.

## Instrucciones utilizando docker

* Para construir la imagen

```shell
docker build -t hello-springrest:latest .
```

* Para lanzar el contenedor

```shell
docker run -it  --rm -p 8080:8080 hello-springrest:latest
```

## Instrucciones utilizando docker-compose

* Para construir 

```
docker-compose build
```

* Para ejecutar

```
docker-compose up
```