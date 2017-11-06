FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/crypto-web-ui.war app.war
ENV JAVA_OPTS="-XX:+PrintFlagsFinal"
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]