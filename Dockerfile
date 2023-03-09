FROM openjdk:17
COPY ./CloudBuild_GKE_Sample/ /tmp
WORKDIR /tmp
ENTRYPOINT ["java","HelloWorldApplication"]