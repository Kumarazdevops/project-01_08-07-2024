# Use an official OpenJDK image as the base image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application source code
COPY . .

# Build the application (replace with your build commands)
RUN ./gradlew build

# Default command to run tests
CMD ["./gradlew", "test"]
