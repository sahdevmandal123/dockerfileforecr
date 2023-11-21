# Build stage
FROM maven:3.8.4-openjdk-11-slim AS build
WORKDIR /app
COPY . .
RUN mvn clean install

# Run stage
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/your-spring-boot-app.jar /app/your-spring-boot-app.jar
EXPOSE 8080
CMD ["java", "-jar", "your-spring-boot-app.jar"]
