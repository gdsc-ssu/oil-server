FROM adoptopenjdk:8-jdk-hotspot AS builder

COPY gradlew .
COPY settings.gradle.kts .
COPY build.gradle.kts .
COPY gradle gradle
COPY src src
RUN chmod +x ./gradlew
RUN ./gradlew bootJar

FROM adoptopenjdk:8-jre-hotspot

RUN mkdir /opt/app

COPY --from=builder build/libs/*.jar /opt/app/oil-api.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/opt/app/oil-api.jar"]