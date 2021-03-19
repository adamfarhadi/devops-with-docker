FROM  golang:1.15-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

ENV PORT=8080

ENV REQUEST_ORIGIN="http://localhost"

RUN go build

CMD ["./server"]

