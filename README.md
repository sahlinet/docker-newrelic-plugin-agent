docker-newrelic-plugin-agent
============================

New Relic Plugin
------------------
https://github.com/MeetMe/newrelic-plugin-agent#installation-instructions

Add variable with your NewRelic license key.

`-e NEWRELIC_LICENSE`

PostgreSQL
----------
# Running philipsahli/docker-postgresql-test
Link to a container running the image `philipsahli/docker-postgresql-test`.

`-e MODE=docker-postgresql-test`

`--link=db:db`

thus on Docker:

`docker run --link=db:db --rm -i -t -e MODE=docker-postgresql-test -e NEWRELIC_LICENSE=asdfasdfasdfasdfasdfsaf philipsahli/newrelic-plugin-agent`

thus on Tutum:

`tutum service run --link=db:db -e MODE=docker-postgresql-test -e NEWRELIC_LICENSE=asdfasdfasdfasdfasdfsaf philipsahli/newrelic-plugin-agent`
`tutum service run --link=db:db -e MODE=docker-postgresql-test -e NEWRELIC_LICENSE=bd80f971051885433a13f77eae8db909e0be6e98 philipsahli/newrelic-plugin-agent`

# Foreign PostgreSQL instance

`-e MODE=foreign`
`-e DB_HOST=host1.company.ch`
`-e DB_PORT=5432`
`-e DB_USERNAME=myuser`
`-e DB_PASSWORD=asdf`
`-e DB_DATABASE=mydb`
