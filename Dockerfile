FROM openjdk:17
COPY ./CloudBuild_GKE_Sample/src\src\main\java\com\example\helloworld\HelloworldApplication.java /tmp
WORKDIR /tmp
ENTRYPOINT ["java","HelloWorldApplication"]