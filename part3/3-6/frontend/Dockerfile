FROM node:14.16.1-alpine as build-stage

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL="http://127.0.0.1/api"

RUN npm install && \
    npm run build


FROM node:14.16.1-alpine

WORKDIR /usr/src/app

COPY --from=build-stage /usr/src/app/build /usr/src/app

ENV REACT_APP_BACKEND_URL="http://127.0.0.1/api"

RUN npm install -g serve && \
    adduser --disabled-password appuser

USER appuser

EXPOSE 5000

ENTRYPOINT serve -s -l 5000 /usr/src/app