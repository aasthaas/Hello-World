FROM openjdk:8
EXPOSE 8081
RUN mvn clean package
ADD target/spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar
ENTRYPOINT ["java", "-jar", "spring-boot-2-hello-world-1.0.2-SNAPSHOT.jar"]
