FROM eclipse-temurin:17-jdk-alpine

# Optional: Install curl (useful for debugging inside the container)
RUN apk add --no-cache curl

# Create a volume for temporary files
VOLUME /tmp

# Expose the application port
EXPOSE 8080

# Copy the Spring Boot JAR file into the container
ADD target/spring-demo-0.0.1-SNAPSHOT.jar spring-demo-service.jar

# Define the entry point to run the JAR
ENTRYPOINT ["java", "-jar", "/spring-demo-service.jar"]