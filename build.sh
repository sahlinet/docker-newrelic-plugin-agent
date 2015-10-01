docker build -t newrelic-plugin-agent --force-rm=true --rm=true .
docker tag -f newrelic-plugin-agent philipsahli/newrelic-plugin-agent
