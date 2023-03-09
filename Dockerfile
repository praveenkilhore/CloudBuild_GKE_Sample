FROM openjdk:19-jdk-alpine
COPY hello-spring-1.0.0.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar"]