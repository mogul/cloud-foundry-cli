FROM ubuntu:latest

MAINTAINER kramos <markosrendell@gmail.com>

# Install JDK
RUN apt-get install -y default-jdk

# Install cloud foundry cli
RUN apt-get update -y && \
RUN apt-get install -y software-properties-common && \
    apt-get update -y && \
    apt-get install -y wget && \
    wget -O cf.tgz 'https://cli.run.pivotal.io/stable?release=linux64-binary&source=github' && \
    tar xvzf cf.tgz && \
    cp ./cf /usr/local/bin

CMD cf -v

