FROM resin/rpi-raspbian:latest

RUN apt-get update &&\
    apt-get install screenfetch

CMD screenfetch