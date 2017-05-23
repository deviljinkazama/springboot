FROM openjdk
#ENTRYPOINT /bin/bash
EXPOSE 8080 8888
ADD spring.jar /opt/
#RUN java -jar /opt/spring.jar
RUN wget https://172.17.0.11/spring.jar -o /opt/spring.jar
CMD ["java","-jar","/opt/spring.jar"]
