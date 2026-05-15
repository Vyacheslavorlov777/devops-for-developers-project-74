FROM node:20.12.2

WORKDIR /app

COPY app/package.json app/package-lock.json ./

RUN npm install

COPY app .