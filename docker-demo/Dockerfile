

FROM maven:3.9-eclipse-temurin-21 AS builder

WORKDIR /app

RUN git clone https://github.com/spring-projects/spring-petclinic.git

WORKDIR /app/spring-petclinic

RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jre

COPY --from=builder /app/spring-petclinic/target/*.jar app.jar

EXPOSE 8080

CMD ["java","-jar","/app.jar"]
