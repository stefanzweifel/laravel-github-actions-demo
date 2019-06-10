FROM php:7.3-cli-alpine

LABEL "com.github.actions.name"="phpunit-test"
LABEL "com.github.actions.description"="Run phpunit test suite"
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="green"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
