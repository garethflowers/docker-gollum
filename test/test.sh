#!/bin/sh
export IMAGE_NAME=garethflowers/gollum

docker build \
	--progress plain \
	--tag $IMAGE_NAME \
	.

docker run \
	--rm \
	$IMAGE_NAME \
	gollum \
	--version

echo "\nOK"
