FROM openjdk:8-jre
ADD target/HelloworldAppplication.jar HelloworldAppplication.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "HelloworldAppplication.jar"]