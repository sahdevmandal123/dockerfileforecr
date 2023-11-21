# Use the official OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/your-spring-boot-app.jar /app/your-spring-boot-app.jar

# Expose the port that the Spring Boot application will run on
EXPOSE 8080

# Command to run your Spring Boot application
CMD ["java", "-jar", "your-spring-boot-app.jar"]
