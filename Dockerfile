FROM openjdk:8-jre-alpine
COPY ./src/ ./
RUN mvn package
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "helloworld-0.0.1-SNAPSHOT.jar"]
