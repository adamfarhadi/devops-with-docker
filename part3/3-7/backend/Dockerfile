FROM node:14 as build-stage

WORKDIR /usr/src/app

RUN git clone https://github.com/adamfarhadi/full-stack-open


FROM node:14-alpine

WORKDIR /usr/src/app

EXPOSE 3001

ENV MONGODB_URI=

ENV PORT=3001

COPY --from=build-stage /usr/src/app/full-stack-open/part3/phonebook/phonebook-backend/ /usr/src/app

RUN npm install

CMD [ "npm", "start" ]