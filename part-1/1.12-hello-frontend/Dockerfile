FROM debian:stable-slim

EXPOSE 5000

RUN apt update && apt install -y curl && curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt install -y nodejs

WORKDIR /usr/app/src

COPY material-applications/example-frontend/ .

RUN npm install && npm run build && npm install -g serve

ENTRYPOINT [ "serve" ]

CMD [ "-s", "-l", "5000", "build" ]

