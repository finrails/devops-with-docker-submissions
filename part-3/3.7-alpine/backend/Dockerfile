FROM golang:alpine3.18

EXPOSE 8080

WORKDIR /usr/app/src/

ADD material-applications/example-backend/ .

RUN go build && \
		go test && \
		adduser -D appuser && \
		rm -rf /etc/apk/repositories

USER appuser

CMD [ "./server" ]
