FROM docker

WORKDIR /usr/app/src

RUN apk update && apk add git

ADD builder.sh .

RUN chmod +x ./builder.sh

ENTRYPOINT [ "/usr/app/src/builder.sh" ]
