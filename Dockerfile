FROM resin/rpi-raspbian:latest
FROM resin/raspberrypi3-node

RUN [ "cross-build-start" ]

# Installation Python
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv git

# Install Docker SDK
#RUN pip install docker

## Execution

ADD app /app
WORKDIR /app

RUN [ "cross-build-end" ]

CMD npm install -y && node app.js
ENTRYPOINT ["/bin/bash"]