FROM debian:stable-slim

EXPOSE 5000

WORKDIR /usr/app/src

COPY material-applications/example-frontend/ .

RUN apt update && \
		apt install -y curl && \
		curl -sL https://deb.nodesource.com/setup_16.x | bash && \
		apt install -y nodejs && \
		npm install && \
		npm run build && \
		npm install -g serve && \
		apt remove -y curl && \
		rm -rf /var/lib/apt/lists/*

ENTRYPOINT [ "serve" ]

CMD [ "-s", "-l", "5000", "build" ]

