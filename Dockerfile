# You can change this base image to anything else
# But make sure to use the correct version of Java
FROM adoptopenjdk/openjdk11:alpine-jre

# Simply the artifact path
ARG artifact=target/Jenkins-Spring-Java.jar

WORKDIR /opt/app

COPY ${artifact} app.jar

RUN ["chmod", "+x", "/opt/app/app.jar"]

# This should not be changed
ENTRYPOINT ["java","-jar","app.jar"]
