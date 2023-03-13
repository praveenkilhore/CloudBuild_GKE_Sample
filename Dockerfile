# FROM openjdk:8-jre-alpine

# COPY ./src/ ./
# RUN mvn package
# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "helloworld-0.0.1-SNAPSHOT.jar"]



FROM maven:3.8.5-openjdk-17

COPY pom.xml /app/
COPY src /app/src/

WORKDIR /app
#RUN mvn package

COPY /target/helloworld-0.0.1-SNAPSHOT.jar /app/

CMD ["java", "-jar", "helloworld-0.0.1-SNAPSHOT.jar"]

