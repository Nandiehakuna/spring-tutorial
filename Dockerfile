# Use a base image with OpenJDK 11
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/taco-0.0.1-SNAPSHOT.jar /app

# Expose the port that the Spring Boot application will run on
EXPOSE 8080

# Define environment variables
ENV SPRING_PROFILES_ACTIVE=prod

# Command to run your application
CMD ["java", "-jar", "taco-0.0.1-SNAPSHOT.jar"]

