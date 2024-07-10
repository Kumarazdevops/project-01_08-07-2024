FROM openjdk:11-jdk-slim

WORKDIR /app

COPY . .

RUN javac Main.java

CMD ["Main", "test", "my_image"]
