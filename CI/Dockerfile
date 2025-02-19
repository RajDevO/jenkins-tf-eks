FROM openjdk:17-jdk-slim

#ARG JAR_FILE=target/*.jar

# Set the working directory in the container
WORKDIR /app

# Ensure the JAR file is built and located at target/*.jar
COPY target/hello-world-app.jar app.jar

# Expose the port your Spring Boot app will run on
EXPOSE 8090

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

## sudo docker run -p 8080:8080 -t docker-spring-boot:1.0
## sudo docker run -p 80:8080 -t docker-spring-boot:1.0
## sudo docker run -p 443:8443 -t docker-spring-boot:1.0
