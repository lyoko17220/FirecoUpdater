FROM resin/rpi-raspbian:latest

# Installation Python
RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv && \

# Install Docker SDK
RUN pip install docker

#Installation NodeJs
RUN \
  curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash - && \
  apt-get install -y build-essential nodejs && \
  rm -rf /var/lib/apt/lists/*


## Execution

WORKDIR app/

CMD npm install