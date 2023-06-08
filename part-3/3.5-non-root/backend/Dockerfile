FROM alpine:latest

EXPOSE 8080

WORKDIR /usr/app/src/

COPY material-applications/example-backend/ .

ENV PATH "/usr/local/go/bin:${PATH}"

RUN apk update && apk add tar wget gcc && wget https://go.dev/dl/go1.16.linux-amd64.tar.gz
RUN apk add --no-cache libc6-compat musl-dev

RUN rm -rf /usr/local/go && tar -C /usr/local -xzf /usr/app/src/go1.16.linux-amd64.tar.gz

RUN go build && go test

RUN adduser -D appuser

USER appuser

CMD [ "./server" ]
