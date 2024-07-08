 # Use an official OpenJDK image as the base image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Gradle wrapper and necessary files
COPY gradlew gradlew
COPY gradle gradle

# Copy the rest of the application source code
COPY src src
COPY build.gradle build.gradle
COPY settings.gradle settings.gradle

# Ensure Gradle wrapper is executable
RUN chmod +x gradlew

# Build the application


# Run tests
CMD ["./gradlew", "test"]
