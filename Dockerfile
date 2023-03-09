FROM openjdk:8-jre
ADD target/HelloworldApplication.jar app.jar
EXPOSE 8010
ENTRYPOINT ["java","-jar","/app.jar"]