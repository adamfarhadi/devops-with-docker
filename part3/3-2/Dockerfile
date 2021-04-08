FROM docker:latest

WORKDIR /usr/src/app

COPY . .

RUN apk add bash git

CMD ["bash", "test.sh"]