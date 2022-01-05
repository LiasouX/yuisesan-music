FROM maven:3.8.4

WORKDIR /app

COPY src /app/src

COPY pom.xml /app

RUN mvn -f /app/pom.xml clean package

FROM alpine:3.13

#ENV MYSQL_HOST
#ENV MYSQL_PORT
#ENV MYSQL_USERNAME
#ENV MYSQL_PASSWORD

RUN apk add --update --no-cache openjdk8-jre-base \
    && rm -f /var/cache/apk/* \

WORKDIR /app

COPY --from=build /app/target/yuisean-music-0.0.1.jar .


EXPOSE 8080

CMD ["java","-jar","/app/yuisean-music-0.0.1.jar"]