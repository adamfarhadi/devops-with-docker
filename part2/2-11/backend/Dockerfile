FROM node:14

WORKDIR /usr/src/app

RUN git clone https://github.com/adamfarhadi/full-stack-open

WORKDIR /usr/src/app/full-stack-open/part3/phonebook/phonebook-backend/

EXPOSE 3001

ENV MONGODB_URI=

ENV PORT=3001

RUN npm install

CMD [ "npm", "start" ]