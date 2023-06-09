FROM alpine:3.18 as alpine

WORKDIR /usr/app/src

RUN apk update && apk add curl

RUN curl https://en.wikipedia.org/wiki/Ada_Lovelace > raw.html && \
		apk del curl

FROM busybox:stable-uclibc as busybox

WORKDIR /usr/app/src

COPY --from=alpine /usr/app/src/raw.html .

RUN adduser --disabled-password appuser

USER appuser

CMD [ "cat", "raw.html" ]
