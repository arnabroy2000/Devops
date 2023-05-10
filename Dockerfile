FROM openjdk:11
EXPOSE 8085
ADD target/Devops-0.0.1-SNAPSHOT.jar Devops-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/Devops-0.0.1-SNAPSHOT.jar"]