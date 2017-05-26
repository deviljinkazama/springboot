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
RUN mkdir shardool
#RUN echo ${CURRENT_BUILD}
#RUN curl http://172.17.0.11/spring-${CURRENT_BUILD}.jar -o /shardool/spring-${CURRENT_BUILD}.jar
#CMD java -jar /shardool/spring-${CURRENT_BUILD}.jar
RUN curl http://172.17.0.11/spring.jar -o /shardool/spring.jar
CMD java -jar /shardool/spring.jar
