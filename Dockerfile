FROM open-jdk:8
EXPOSE 8080
ADD target/az-k8-ms-0.0.1-SNAPSHOT.jar az-k8-ms.jar
ENTRYPOINT [ "java","-jar","/az-k8-ms.jar" ]