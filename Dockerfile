FROM openjdk:11-jdk-slim

WORKDIR /app

COPY . .

RUN 

CMD ["./gradlew", "test"]
