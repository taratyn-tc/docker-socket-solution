FROM debian:buster

RUN apt-get -y update && apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg 

RUN  curl -fsSL https://download.docker.com/linux/debian/gpg | gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

RUN echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  buster stable" | tee /etc/apt/sources.list.d/docker.list 


RUN apt-get -y update && apt-get -y install docker-ce docker-ce-cli containerd.io

