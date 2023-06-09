FROM golang:alpine3.18 AS go

WORKDIR /usr/app/src/

ADD material-applications/example-backend/ .

RUN go build && \
		go test && \
		adduser -D appuser && \
		rm -rf /etc/apk/repositories

USER appuser

FROM scratch

WORKDIR /usr/app/src

EXPOSE 8080

COPY --from=go /usr/app/src/server .

CMD [ "./server" ]
