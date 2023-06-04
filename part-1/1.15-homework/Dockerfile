FROM alpine:3.18

WORKDIR /usr/app/src

RUN apk update && apk add curl

RUN curl https://en.wikipedia.org/wiki/Ada_Lovelace > raw.html

CMD [ "cat", "raw.html" ]
