#!/bin/bash
set -e -u
IMAGE_NAME='arduino-workshop'

docker build -t ${IMAGE_NAME} .

docker run --rm -t -i \
  --privileged \
  --volume=$(pwd):/workshop/workdir \
	--volume=/dev/bus/usb:/dev/bus/usb \
  ${IMAGE_NAME} \
	/bin/bash

