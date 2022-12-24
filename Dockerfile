FROM maven
COPY . /home/app
WORKDIR /home/app
RUN ls -R
RUN mvn clean install
RUN cp target/java-redis-docker-1.0-SNAPSHOT.jar java-redis-docker-1.0-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","java-redis-docker-1.0-SNAPSHOT.jar"]