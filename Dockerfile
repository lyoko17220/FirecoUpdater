FROM resin/armv7hf-debian

RUN [ "cross-build-start" ]

# Installation Python
# Install Node.js (v8) [Manually]
RUN curl -sSL https://nodejs.org/dist/v8.9.1/node-v8.9.1-linux-armv7l.tar.xz
RUN tar -xvf node-v8.9.1-linux-armv7l.tar.xz
RUN cd node-v8.9.1-linux-armv7l
RUN sudo cp -R * /usr/local/


RUN \
  apt-get update && \
  apt-get install -y python python-dev python-pip python-virtualenv git




# Install Docker SDK
#RUN pip install docker

## Execution

ADD app /app
WORKDIR /app

RUN npm install -y

RUN [ "cross-build-end" ]

CMD node app.js
ENTRYPOINT ["/bin/bash"]