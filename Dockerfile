FROM philipsahli/ubuntu:trusty

ADD newrelic-plugin.conf /etc/supervisor/conf.d/
RUN apt-get update
RUN apt-get install -y --fix-missing python-pip
RUN pip install newrelic-plugin-agent

ADD newrelic-plugin-agent.tmpl /etc/newrelic/newrelic-plugin-agent.tmpl

RUN mkdir -p /var/log/newrelic
RUN mkdir /var/run/newrelic

RUN apt-get install -y libpq-dev python-dev

RUN pip install newrelic-plugin-agent[postgresql]
RUN pip install newrelic-plugin-agent[rabbitmq]
RUN pip install newrelic-plugin-agent[redis]
RUN pip install j2cli
RUN apt-get install -y moreutils

ADD startup_newrelic_agent.sh /
