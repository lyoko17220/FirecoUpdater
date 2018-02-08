FROM resin/rpi-raspbian:latest

# Installation Python
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv

# Install Docker SDK
RUN pip install docker

#Installation NodeJs
RUN \
  curl -L https://git.io/n-install | bash && \
  rm -rf /var/lib/apt/lists/*

RUN n latest

## Execution

COPY app /app
WORKDIR app/

CMD npm install