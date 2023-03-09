# FROM openjdk:8-jre
# ADD target/HelloworldAppplication.jar HelloworldAppplication.jar
# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "HelloworldAppplication.jar"]

FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/helloworld-0.0.1-SNAPSHOT.jar /usr/local/lib/demo.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]