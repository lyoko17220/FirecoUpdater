FROM resin/rpi-raspbian:latest

RUN \
  apt-get update && \
  apt-get install npm python python-dev python-pip python-virtualenv git && \
  npm install -g n && \
  n latest


## Execution

ADD app /app
WORKDIR /app

RUN npm install -y


CMD node app.js