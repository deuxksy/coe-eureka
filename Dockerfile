FROM openjdk:8-jre-alpine
ENV APP_FILE coe-eureka-0.0.1-SNAPSHOT.jar
ENV APP_HOME /usr/app
EXPOSE 7070
COPY target/$APP_FILE $APP_HOME/
WORKDIR $APP_HOME
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","$APP_FILE"]
