FROM ubuntu:latest

COPY . /app

WORKDIR /app

RUN apt-get update && apt-get install -y nodejs npm

RUN npm install

EXPOSE 3000