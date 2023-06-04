FROM openjdk:8

WORKDIR /usr/src/app

COPY /material-applications/spring-example-project/ .

RUN ./mvnw package

EXPOSE 8080

ENTRYPOINT [ "java" ]

CMD [ "-jar", "./target/docker-example-1.1.3.jar" ]
