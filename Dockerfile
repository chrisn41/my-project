FROM maven:3.9.6-eclipse-temurin-17

WORKDIR /app

COPY . .

RUN mvn clean package

CMD ["java", "-jar", "target/my-project-1.0-SNAPSHOT.jar"]
