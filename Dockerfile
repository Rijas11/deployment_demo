FROM openjdk:8
EXPOSE 8090
user root
ADD deployment_application/target/my-deployment.jar docker-demo.jar
ENTRYPOINT ["java","-jar","/docker-demo.jar"]
