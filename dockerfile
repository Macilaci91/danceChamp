FROM java:8
EXPOSE 8080
ADD target/DanceDbRest-0.0.1-SNAPSHOT.jar DanceDbRest-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","DanceDbRest-0.0.1-SNAPSHOT.jar"]