FROM openjdk:8-jre
ADD target/HelloworldApplication.jar HelloworldApplication.jar
EXPOSE 8010
ENTRYPOINT ["java","-jar","HelloworldApplication.jar"]