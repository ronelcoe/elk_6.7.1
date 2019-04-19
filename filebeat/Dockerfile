FROM docker.elastic.co/beats/filebeat:6.7.1
COPY filebeat.yml /usr/share/filebeat/filebeat.yml
USER root
RUN mkdir -p /opt/app/logs \
&& chmod -R 777 /opt/app/logs \
&& chmod go-w /usr/share/filebeat/filebeat.yml \
&& chown root:filebeat /usr/share/filebeat/filebeat.yml \
#USER filebeat