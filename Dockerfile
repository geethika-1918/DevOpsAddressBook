FROM tomcat:8
COPY /target/addressbook.war /usr/local/tomcat/webapps/addressbook.war
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]

