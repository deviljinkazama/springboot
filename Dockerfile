FROM openjdk
#ENTRYPOINT /bin/bash
EXPOSE 8080 8888
ADD spring.jar /opt/
#RUN java -jar /opt/spring.jar
CMD ["java","-jar","/opt/spring.jar"]
