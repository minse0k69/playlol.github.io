FROM openjdk:8-jre-slim

WORKDIR /app

COPY api-SNAPSHOT.jar .
EXPOSE 8080

CMD java -jar api-SNAPSHOT.jar