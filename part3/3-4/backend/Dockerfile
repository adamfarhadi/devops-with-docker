FROM golang:1.16

WORKDIR /usr/src/app

EXPOSE 8080

COPY . .

ENV PORT=8080

ENV REQUEST_ORIGIN="http://127.0.0.1:5000"

RUN go build && \
    useradd -m appuser && \
    rm -rf /var/lib/apt/lists/* 

USER appuser

ENTRYPOINT ./server

