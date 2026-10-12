FROM maven:3.9-eclipse-temurin-11 AS build

WORKDIR /app
COPY pom.xml .
COPY src ./src

RUN mvn -DskipTests clean package

FROM tomcat:10.1-jdk11-temurin

RUN rm -rf /usr/local/tomcat/webapps/*
RUN sed -i 's/port="8080"/port="10000"/' /usr/local/tomcat/conf/server.xml

COPY --from=build /app/target/fitnesstracker.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 10000
