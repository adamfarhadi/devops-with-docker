FROM  golang:1.15-alpine

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN export PORT=8080

RUN go build

CMD ["./server"]

