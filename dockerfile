FROM openjdk:8-jre-slim

WORKDIR /app

COPY test-springboot2-SNAPSHOT.jar .
EXPOSE 8080

CMD java -jar test-springboot2-SNAPSHOT.jar