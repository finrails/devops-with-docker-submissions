FROM ubuntu:latest

EXPOSE 8080

WORKDIR /usr/app/src/

COPY material-applications/example-backend/ .

ENV PATH /usr/local/go/bin:$PATH

RUN apt update && apt install -y tar wget gcc && \
		adduser --disabled-password appuser && \
		wget https://go.dev/dl/go1.16.linux-amd64.tar.gz && \
		apt remove --purge -y --auto-remove curl wget && \
		rm -rf /var/lib/apt/lists/* && \
		rm -rf /usr/local/go && \
		tar -C /usr/local -xzf /usr/app/src/go1.16.linux-amd64.tar.gz && \
		go build && \
		go test 

USER appuser

CMD [ "./server" ]
