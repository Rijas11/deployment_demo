FROM openjdk:8
EXPOSE 8080
ADD deployment_application/target/my-deployment.jar /var/lib/docker/docker-test-demo.jar
ENTRYPOINT ["java","-jar","/var/lib/docker/docker-test-demo.jar"
