FROM openjdk:8-jre-slim

COPY api-SNAPSHOT.jar .
EXPOSE 8080

CMD java -jar api-SNAPSHOT.jar