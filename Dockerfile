FROM resin/rpi-raspbian:latest

# Installation Python
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv

# Install Docker SDK
RUN pip install docker

#Installation NodeJs
RUN \
  apt-get install -y npm && \
  rm -rf /var/lib/apt/lists/*

RUN npm install n

RUN n latest

## Execution

WORKDIR app/

CMD npm install