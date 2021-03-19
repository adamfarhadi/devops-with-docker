FROM node:14.16.0-alpine

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

RUN npm install

RUN npm install -g serve

ENV REACT_APP_BACKEND_URL="http://127.0.0.1:4568"

RUN npm run build

ENTRYPOINT serve -s -l 5000 build