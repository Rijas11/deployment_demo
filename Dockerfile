FROM openjdk:8
EXPOSE 8080
RUN mkdir doc
RUN sudo chmod 777 /doc
RUN cd doc
WORKDIR /doc
RUN mkdir test
RUN sudo chmod 777 /test
ADD /deployment_application/target/my-deployment.jar docker-test-demo.jar /doc/test
ENTRYPOINT ["java","-jar","/doc/test/docker-test-demo.jar"
