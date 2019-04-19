FROM openjdk:8-jdk

EXPOSE $EXPOSE_PORT
RUN mkdir -p /opt/app/logs
WORKDIR /opt/app

ARG JAR_PATH

COPY $JAR_PATH /opt/app

#RUN wget -O apm-agent.jar https://search.maven.org/remotecontent?filepath=co/elastic/apm/elastic-apm-agent/1.5.0/elastic-apm-agent-1.5.0.jar
COPY apm-app-template/apm-agent.jar /opt/app

CMD java -javaagent:/opt/app/apm-agent.jar $JVM_OPTIONS -jar $JAR_NAME

#CMD java $JVM_OPTIONS -jar $JAR_NAME