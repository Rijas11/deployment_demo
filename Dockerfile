FROM openjdk:8
EXPOSE 8080
RUN mkdir nikhil
RUN chmod 777 /nikhil
RUN cd nikhil
WORKDIR /nikhil
RUN mkdir test
RUN chmod 777 nikhil/test
ADD /deployment_application/target/my-deployment.jar docker-test-demo.jar /nikhil/test
ENTRYPOINT ["java","-jar","/nikhil/test/docker-test-demo.jar"
