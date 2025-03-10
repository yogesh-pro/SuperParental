FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    wget \
    curl \
    git \
    npm \
    nano \
    jq\
    nodejs \
    openjdk-8-jdk \
    sudo \
    openjdk-8-jre

RUN git clone https://github.com/yogesh-pro/SuperParental.git

WORKDIR /SuperParental

WORKDIR /SuperParental
RUN npm install pm2 -g
RUN npm install | true
RUN npm audit | true
RUN npm audit fix | true

EXPOSE 22533
EXPOSE 22222

CMD ["pm2-runtime", "index.js"]

# How to start DokerFile? Ask t.me/ErrorFiX_Tv
