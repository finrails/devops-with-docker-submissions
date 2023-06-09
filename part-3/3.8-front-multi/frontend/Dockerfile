FROM node:16.20.0-alpine3.18 AS node

EXPOSE 5000

WORKDIR /usr/app/src

COPY material-applications/example-frontend/ .

RUN	npm install && \
		npm run build && \
		npm install -g serve && \
		rm -rf /etc/apk/repositories

FROM nginx:mainline-alpine3.17-slim AS alpine

WORKDIR /usr/share/nginx/html

COPY --from=node /usr/app/src/build .

EXPOSE 80
