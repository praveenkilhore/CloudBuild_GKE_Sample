FROM openjdk:8-jre
ADD helloworld.jar helloworld.jar
EXPOSE 8010
ENTRYPOINT ["java", "-jar", "helloworld.jar"]