FROM ubuntu:latest

MAINTAINER Johann Förster <johann.foerster@qualityminds.de>

RUN export DEBIAN_FRONTEND=noninteractive && \
	apt-get update && \ 
	apt-get install -y  \
	git sudo tzdata wget && \
	rm -rf /var/lib/apt/lists/* 

RUN useradd -m compiler && \
    echo "compiler ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/compiler && \
    chmod 0440 /etc/sudoers.d/compiler

RUN mkdir /jenkins && \
    chmod 777 /jenkins
