#FROM openjdk
#ENTRYPOINT /bin/bash
#EXPOSE 8080 8888
#ADD spring.jar /opt/
#RUN java -jar /opt/spring.jar
#RUN curl http://172.17.0.11/spring.jar -o /opt/spring.jar
#CMD ["java","-jar","/opt/spring.jar"]
#CMD java -jar /opt/spring.jar
FROM openjdk:8
EXPOSE 8080 8888
RUN mkdir app-dir
RUN curl http://172.17.0.11/spring-2.jar -o /app-dir/spring-2.jar
CMD java -jar /app-dir/spring-2.jar
