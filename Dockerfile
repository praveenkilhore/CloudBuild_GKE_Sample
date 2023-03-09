FROM java:8
EXPOSE 8080
ADD target/HelloworldApplication.jar HelloworldApplication.jar
ENTRYPOINT ["java", "-jar", "HelloworldApplication.jar"]