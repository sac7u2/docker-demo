FROM alpine/git as clone 
MKDIR /app
WORKDIR /app
RUN git clone https://github.com/sac7u2/docker-demo.git

FROM maven:3.5-jdk-8-alpine as build 
WORKDIR /app
COPY --from=clone /app/docker-demo/ /app 
RUN mvn install

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=build /app/target/docker-demo-0.0.1-SNAPSHOT.jar /app
CMD ["java -jar docker-demo.0.0.1-SNAPSHOT.jar"]