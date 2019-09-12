FROM openjdk:8-jre
MAINTAINER Warnier-zhang <warnier.zhang@gmail.com>

ENV TIME_ZONE=Asia/Shanghai
RUN /bin/cp /usr/share/zoneinfo/$TIME_ZONE /etc/localtime && echo $TIME_ZONE > /etc/timezone

ADD ./target/test-1.0.0-SNAPSHOT.jar /app/
WORKDIR /app
CMD ["java", "-Xmx200m", "-jar", "test-1.0.0-SNAPSHOT.jar"]

EXPOSE 8080