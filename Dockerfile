FROM ubuntu:latest

MAINTAINER Johann Förster <johann.foerster@qualityminds.de>

RUN export DEBIAN_FRONTEND=noninteractive \
	&& apt-get update \ 
	&& apt-get install -y  \
	git \
	sudo \
	tzdata \
	wget \
	&& rm -rf /var/lib/apt/lists/* 

RUN useradd -m compiler
