FROM openjdk:8
EXPOSE 8080
USER root
ADD /deployment_application/target/my-deployment.jar docker-test-demo.jar
ENTRYPOINT ["java","-jar","/docker-test-demo.jar"
