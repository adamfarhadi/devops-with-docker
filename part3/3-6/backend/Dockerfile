FROM golang:1.16-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -installsuffix cgo -o .


FROM scratch

COPY --from=build-stage /usr/src/app/ /usr/src/app

EXPOSE 8080

ENV PORT=8080

ENV REQUEST_ORIGIN="http://127.0.0.1:5000"

ENTRYPOINT ["/usr/src/app/server"]