## Intro
This is about a simple implementation of Docker based application. 
We have a backend system in java & then it is connected to redis for caching.
The code runs simple spring boot application on a configurable port.

### Running using docker
```
mvn clean install
docker build -t backend .
```
Here Dockerfile is used to create an image. Ones the image is built, run below command to run the service: 
```
 docker-compose -f docker-compose.yml up
```

### without docker: 

Without docker, you can run below command & setup redis on local separately.
run the program using :
```
mvn spring-boot:run
```

the controller exposed are :
```
http://localhost:8090/healthCheck
http://localhost:8090/data?key=Anubhav
http://localhost:8090/set_data?key=Anubhav&val=10
```

You can change the port from application.properties by changing following value. For example here we change the port to 8080

```server.port:8080```

You can also change the connection string of redis using following environment variable:
``` redis_connection_string=redis://localhost:6379 ```