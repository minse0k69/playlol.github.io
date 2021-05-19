FROM base_image

#환경 변수 및 작업 경로
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

WORKDIR ${CATALINA_HOME}

#war 파일 server.xml 복사
COPY *.war ${CATALINA_HOME}/webapps
COPY server.xml ${CATALINA_HOME}/conf

#컨테이너에서 사용할 포트
EXPOSE 9090

#설정 완료 후 실행
CMD ["catalina.sh", "run"]