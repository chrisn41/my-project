# Menggunakan image resmi OpenJDK 21
FROM openjdk:21-jdk-slim

# Set working directory di dalam container
WORKDIR /app

# Salin file pom.xml dan source code ke dalam container
COPY pom.xml .
COPY src ./src

# Install Maven di dalam container
RUN apt-get update && apt-get install -y maven

# Jalankan Maven untuk build aplikasi
RUN mvn clean install

# Tentukan command default untuk menjalankan aplikasi
CMD ["java", "-jar", "target/my-project-1.0-SNAPSHOT.jar"]

