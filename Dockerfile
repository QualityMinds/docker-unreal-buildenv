FROM: ubuntu:latest

MAINTAINER Johann Förster <johann.foerster@qualityminds.de>

RUN apt-get update && apt-get install -y  \
	git \
	sudo \
	tzdata \
	wget \
	&& rm -rf /var/lib/apt/lists/* \
	useradd -m compiler
