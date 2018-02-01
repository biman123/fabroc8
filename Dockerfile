FROM fabric8/s2i-java:2.0
VOLUME /tmp
ADD PnrService-1.0.0.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
EXPOSE 8080

