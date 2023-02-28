FROM openjdk:8
EXPOSE 8081
RUN mvn clean install
ADD target/jenkins-docker-integration.jar jenkins-docker-integration.jar
ENTRYPOINT ["java", "-jar", "jenkins-docker-integration.jar"]
