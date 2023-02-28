FROM maven:3.8.3-openjdk-17-slim
# Set the working directory to /app
WORKDIR /app

# Copy the pom.xml and src directory to the container
COPY pom.xml /app
COPY src /app/src

RUN mvn clean package

EXPOSE 8081

CMD ["java", "-jar", "target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar"]
