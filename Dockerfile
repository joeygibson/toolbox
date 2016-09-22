FROM library/debian:jessie

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get -y install netcat vim sparkyfish htop \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN cat alias.txt >> ~/.bashrc


