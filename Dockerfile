FROM openjdk:11-jdk-slim

WORKDIR C:\ACER\08-07-2024\Project-1\project-01_08-07-2024\project-01_08-07-2024

COPY . .

RUN ./gradlew build

CMD ["./gradlew", "test", "my_image"]
