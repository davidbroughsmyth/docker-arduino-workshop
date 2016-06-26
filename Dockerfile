FROM ubuntu:15.10

MAINTAINER Pete Hodgson <docker@thepete.net>

RUN apt-get update && apt-get install -y \
	build-essential \
	arduino-core \
	minicom \
	screen \
  python \
	python-serial

RUN mkdir -p /workshop
WORKDIR /workshop

COPY Arduino-Makefile /arduino-mk
