FROM openjdk:8-jre-alpine

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar
COPY healthy /tmp/
ENTRYPOINT ["java","-jar","/app.jar"]