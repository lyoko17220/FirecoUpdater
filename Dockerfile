FROM resin/armv7hf-debian

RUN [ "cross-build-start" ]

# Installation Python

RUN curl -L https://git.io/n-install | bash

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