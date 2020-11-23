FROM maven:3.6.0-jdk-8

COPY    pom.xml .
RUN     mvn dependency:resolve

COPY src .

RUN mvn clean verify
