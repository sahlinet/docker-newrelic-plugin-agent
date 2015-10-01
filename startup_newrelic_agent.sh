#!/bin/bash

# newrelic plugin
if [ ! -z "$NEWRELIC_LICENSE" ]; then
        j2 /etc/newrelic/newrelic-plugin-agent.cfg | sponge /etc/newrelic/newrelic-plugin-agent.cfg
        sed -i s/autostart=false/autostart=true/ /etc/supervisor/conf.d/newrelic-plugin.conf
fi
