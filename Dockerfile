FROM resin/rpi-raspbian:latest
FROM arm32v6/node:9-alpine

# Installation Python
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv git

# Install Docker SDK
RUN pip install docker

## Execution

ADD app /app
WORKDIR /app

CMD npm install -y && node app.js
ENTRYPOINT ["/bin/bash"]