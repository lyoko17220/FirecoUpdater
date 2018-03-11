FROM resin/rpi-raspbian:latest

RUN [ "cross-build-start" ]

# Installation Python
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv git

RUN curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -

# Install Docker SDK
#RUN pip install docker

## Execution

ADD app /app
WORKDIR /app

RUN npm install -y

RUN [ "cross-build-end" ]

CMD node app.js
ENTRYPOINT ["/bin/bash"]