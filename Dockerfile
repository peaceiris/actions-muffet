FROM golang:1.12.5-alpine3.9

LABEL "com.github.actions.name"="Broken link check with muffet"
LABEL "com.github.actions.description"="Broken link check quickly with raviqqe/muffet"
LABEL "com.github.actions.icon"="link"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/peaceiris/actions-muffet"
LABEL "homepage"="https://github.com/peaceiris/actions-muffet"
LABEL "maintainer"="peaceiris"

RUN apk add --no-cache --virtual .builddeps git && \
    go get -u github.com/raviqqe/muffet && \
    apk del --purge .builddeps

ENTRYPOINT [ "/go/bin/muffet" ]
