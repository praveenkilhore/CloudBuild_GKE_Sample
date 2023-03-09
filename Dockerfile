# FROM openjdk:8-jre-alpine

# COPY ./src/ ./
# RUN mvn package
# EXPOSE 8080
# ENTRYPOINT ["java", "-jar", "helloworld-0.0.1-SNAPSHOT.jar"]



FROM maven:3.8.5-openjdk-17 AS MAVEN_BUILD

COPY pom.xml /build/
COPY src /build/src/

WORKDIR /build/
RUN mvn package

FROM openjdk:17-jdk-alpine
RUN apk --no-cache update \
    && apk --no-cache upgrade \
        busybox \
        libretls \
        zlib \
        apk-tools \
    && rm -rf /var/cache/apk/* 

WORKDIR /app

COPY --from=MAVEN_BUILD /build/target/helloworld-0.0.1-SNAPSHOT.jar /app/
