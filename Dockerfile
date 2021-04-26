FROM maven:3.5.2-jdk-8-alpine AS MAVEN_BUILD
COPY pom.xml /build/
COPY src /build/src/
WORKDIR /build/
RUN mvn clean package -q
FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=MAVEN_BUILD /build/target/springboot-mysql-docker-0.0.1-SNAPSHOT.jar /app/
EXPOSE 3306
ENTRYPOINT ["java", "-jar", "springboot-mysql-docker-0.0.1-SNAPSHOT.jar"]