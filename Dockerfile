FROM resin/rpi-raspbian:latest

RUN curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -

# Installation Python
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv git gcc build-essential nodejs

# Install Docker SDK
RUN pip install docker


## Execution

ADD app /app
WORKDIR /app

CMD npm install -y && node app.js
ENTRYPOINT ["/bin/bash"]