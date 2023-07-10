FROM openjdk:8
EXPOSE 8080
RUN mkdir nikhil
RUN chmod 777 /nikhil
RUN cd nikhil
WORKDIR /nikhil
ADD /deployment_application/target/my-deployment.jar .
ENTRYPOINT ["java","-jar","/my-deployment.jar"
