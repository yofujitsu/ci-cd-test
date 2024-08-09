FROM openjdk:17-jdk-alpine as builder

RUN apk add --no-cache git

RUN git clone git@github.com:yofujitsu/ci-cd-test.git /app

WORKDIR /app

RUN ./gradlew build --no-daemon

FROM openjdk:17-jdk-alpine

WORKDIR /app
COPY --from=builder /app/build/libs/*.jar app.jar

EXPOSE 8085

ENTRYPOINT ["java", "-jar", "app.jar"]