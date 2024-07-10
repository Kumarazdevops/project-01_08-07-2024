FROM openjdk:11-jdk-slim

WORKDIR /app

COPY . .


CMD ["Main", "test", "my_image"]
EXPOSE 80

