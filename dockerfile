from openjdk:18-alpine
COPY ./target/QuarkusTutoriaWeb_H2-runner.jar /app/QuarkusTutoriaWeb_H2-runner.jar
COPY ./target/lib/ /app/lib/
WORKDIR /app/lib
RUN echo Copy com sucesso...
WORKDIR /app
ENTRYPOINT ["java", "-jar", "QuarkusTutoriaWeb_H2-runner.jar"]
EXPOSE 8080
