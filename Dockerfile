FROM ubuntu:12.04

MAINTAINER Pete Hodgson <docker@thepete.net>

RUN apt-get update && apt-get install -y \
	build-essential \
	arduino \
	arduino-core \
	minicom \
	screen

RUN mkdir -p /workshop/workdir
WORKDIR /workshop


