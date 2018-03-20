FROM resin/rpi-raspbian:latest

RUN \
  apt-get update && \
  apt-get install -y npm git && \
  npm install -g n && \
  n latest && \
  npm install -g pm2


## Execution
ADD app /app
WORKDIR /app
RUN npm install -y
#VOLUME /data
#CMD touch /data/hello.txt

# On vide le volume /app-worker pour installer l'application
VOLUME /app-worker
WORKDIR /app
CMD \
    rm -rf /data/* && \
    git clone https://github.com/lyoko17220/FirecoWorker /data/worker && \
    pm2-runtime start ecosystem.json

#CMD pm2-runtime start ecosystem.json

#ENTRYPOINT ["bash"]