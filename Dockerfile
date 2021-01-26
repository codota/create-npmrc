FROM docker:19.03.2
LABEL "repository"="https://github.com/codota/create-npmrc"

RUN apk update \
  && apk upgrade \
  && apk add --no-cache git

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]