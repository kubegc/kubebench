FROM tomcat:9.0.54-jdk8-openjdk-slim

ADD tpcw /usr/local/tomcat/webapps/tpcw

WORKDIR /usr/local/tomcat/bin

EXPOSE 8080

CMD ["catalina.sh", "run"]
