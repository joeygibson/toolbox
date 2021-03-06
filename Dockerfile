FROM library/debian:jessie

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
    && apt-get -y install netcat htop curl vim git tmux \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN curl -L https://github.com/chrissnell/sparkyfish/releases/download/v1.2/sparkyfish-cli-v1.2-linux-amd64.gz \
    | gzip -dc > /usr/local/bin/sparkyfish

RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-1.12.3.tgz \
    && tar --strip-components=1 -xvzf docker-1.12.3.tgz -C /usr/local/bin \
    && rm docker-1.12.3.tgz

COPY alias.txt /root/.alias
RUN echo ". /root/.alias" >> /root/.bashrc \
    && echo "export PS1='\[\e[0;33;1m\]\h:\w>\[\e[m\] '" >> /root/.bashrc


