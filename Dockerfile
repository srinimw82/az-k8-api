#FROM open-jdk:8
#EXPOSE 8080
#ADD target/az-k8-ms-0.0.1-SNAPSHOT.jar az-k8-ms.jar
#ENTRYPOINT [ "java","-jar","/az-k8-ms.jar" ]



FROM maven:3.6.3-jdk-11-slim AS build

WORKDIR usr/src/app

COPY . ./

RUN mvn clean package

#
# Package stage
#

FROM openjdk:11-jre-slim

ARG JAR_NAME="spring-boot-helloworld"

WORKDIR /usr/src/app

COPY --from=build /usr/src/app/target/${JAR_NAME}.jar ./app.jar

CMD ["java","-jar", "./app.jar"]