FROM openjdk:8-jre-alpine
COPY target/helloworld.jar helloworld.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "helloworld.jar"]