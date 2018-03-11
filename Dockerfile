FROM resin/rpi-raspbian:latest
FROM resin/raspberrypi3-node

RUN [ "/usr/bin/qemu-arm-static", "apt-get", "update" ]
RUN [ "/usr/bin/qemu-arm-static", "apt-get", "install", "python-pip" ]

# Installation Python
#RUN \
#  apt-get update && \
#  apt-get install -y python python-dev python-pip python-virtualenv git

# Install Docker SDK
#RUN pip install docker

## Execution

#ADD app /app
#WORKDIR /app

#CMD npm install -y && node app.js
#ENTRYPOINT ["/bin/bash"]