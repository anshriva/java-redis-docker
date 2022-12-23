FROM openjdk:8-jdk-alpine
COPY target/java-redis-docker-1.0-SNAPSHOT.jar java-redis-docker-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","java-redis-docker-1.0-SNAPSHOT.jar"]