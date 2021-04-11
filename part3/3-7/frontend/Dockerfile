FROM node:14 as build-stage

WORKDIR /usr/src/app

RUN git clone https://github.com/adamfarhadi/full-stack-open

WORKDIR /usr/src/app/full-stack-open/part3/phonebook/phonebook-frontend/

RUN npm install && npm run-script build


FROM node:14-alpine

WORKDIR /usr/src/app

EXPOSE 3000

COPY --from=build-stage /usr/src/app/full-stack-open/part3/phonebook/phonebook-frontend/build /usr/src/app

RUN npm install -g serve

CMD [ "serve", "-s", "-l", "3000" ]