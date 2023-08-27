FROM openjdk:8
user root
EXPOSE 9090
ADD deployment_application/target/my-deployment.jar docker-demo.jar
ENTRYPOINT ["java","-jar","/docker-demo.jar"]
