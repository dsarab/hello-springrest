FROM openjdk:11-jre-slim-buster
WORKDIR /opt/springrest
COPY ./build/libs/demo-0.0.1-SNAPSHOT.jar ./
CMD java -jar demo-0.0.1-SNAPSHOT.jar
