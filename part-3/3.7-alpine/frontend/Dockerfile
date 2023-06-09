FROM node:16.20.0-alpine3.18

EXPOSE 5000

WORKDIR /usr/app/src

COPY material-applications/example-frontend/ .

RUN	npm install && \
		npm run build && \
		npm install -g serve && \
		adduser -D appuser && \
		rm -rf /etc/apk/repositories

USER appuser

ENTRYPOINT [ "serve" ]

CMD [ "-s", "-l", "5000", "build" ]
