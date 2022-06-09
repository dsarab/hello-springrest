FROM openjdk:11 AS builder
WORKDIR /spring
COPY . ./
RUN ./gradlew assemble


FROM openjdk:11-jre-slim-buster AS runtime
WORKDIR /opt/springrest
COPY --from=builder /spring/build/libs/demo-0.0.1-SNAPSHOT.jar ./
CMD java -jar demo-0.0.1-SNAPSHOT.jar
