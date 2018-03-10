FROM resin/rpi-raspbian:latest

# Installation Python
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv git

# Install Docker SDK
RUN pip install docker

# NodeJs
FROM node:9

## Execution

VOLUME /data

CMD npm install -y && node app.js