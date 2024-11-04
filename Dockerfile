FROM maven:3.9.9-eclipse-temurin-21-alpine

WORKDIR /app

COPY target/SpringBootKafkaBasics-1.0.jar output/app.jar
ADD src/main/resources/application.properties config/

EXPOSE 9091

ENTRYPOINT ["java", "-jar", "output/app.jar"]