FROM openjdk:11-jdk-slim

WORKDIR /app

COPY . .

RUN ./gradlew build

CMD ["./gradlew", "test", "my_image"]
