FROM docker.elastic.co/logstash/logstash:6.7.1
COPY logstash.yml /usr/share/logstash/logstash.yml
COPY pipeline/input.conf /usr/share/logstash/pipeline/input.conf
COPY pipeline/filter.conf /usr/share/logstash/pipeline/filter.conf
COPY pipeline/output.conf /usr/share/logstash/pipeline/output.conf
USER root
RUN chmod go-w /usr/share/logstash/logstash.yml \
&& chown root:logstash /usr/share/logstash/logstash.yml \
&& chown root:logstash /usr/share/logstash/pipeline/*.conf
USER logstash