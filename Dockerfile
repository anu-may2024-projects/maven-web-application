FROM anuradha2020532/tomcat:1
COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war
EXPOSE 8080
