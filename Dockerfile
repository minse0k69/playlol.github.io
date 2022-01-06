FROM openjdk:8-jre-alpine

#환경 변수 및 작업 경로
ENV CATALINA_HOME /app/project
ENV PATH $CATALINA_HOME/bin:$PATH

WORKDIR $CATALINA_HOME

#war 파일 server.xml 복사
COPY *.jar application.jar

#컨테이너에서 사용할 포트
EXPOSE 8080

#설정 완료 후 실행
CMD ["java", "-jar", "application.jar"]