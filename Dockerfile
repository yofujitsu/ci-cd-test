FROM openjdk:17-jdk-alpine

WORKDIR /app

LABEL maintainer="Alexander Tsvetkov"

COPY build/libs/*.jar app.jar

EXPOSE 8085

CMD ["java", "-jar", "app.jar"]

ADD https://www.mirea.ru/upload/medialibrary/80f/MIREA_Gerb_Colour.png /app/MIREA_Gerb_Colour.png

ENTRYPOINT ["./start-docker-compose.sh"]

VOLUME /tmp

USER root

ONBUILD RUN echo "Сборка и запуск произведены. Автор: Tsvetkov Alex"
