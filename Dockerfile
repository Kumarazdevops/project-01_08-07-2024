FROM openjdk:11-jdk-slim

WORKDIR /app

COPY . .



CMD ["./gradlew", "test", "my_image"]
