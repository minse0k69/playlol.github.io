FROM tomcat8.5:openjdk-8

#환경 변수 및 작업 경로
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR ${CATALINA_HOME}

#war 파일 server.xml 복사
COPY *.war $CATALINA_HOME/webapps
COPY server.xml $CATALINA_HOME/conf

#프로젝트 자체 필요 프로퍼티 정보 복사
COPY test_conf.txt /Users/gwoni/Documents/etoos/conf/test_conf.txt

#컨테이너에서 사용할 포트
EXPOSE 8080

#설정 완료 후 실행
CMD ["catalina.sh", "run"]