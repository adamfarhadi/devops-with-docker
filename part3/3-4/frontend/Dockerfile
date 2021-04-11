FROM node:14.16.0

WORKDIR /usr/src/app

EXPOSE 5000

COPY . .

ENV REACT_APP_BACKEND_URL="http://127.0.0.1/api"

RUN npm install && \
    npm install -g serve && \
    npm run build && \
    useradd -m appuser && \
    rm -rf /var/lib/apt/lists/* 

USER appuser

ENTRYPOINT serve -s -l 5000 build