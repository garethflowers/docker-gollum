#!/bin/sh
export IMAGE_NAME=garethflowers/gollum

docker run \
	--name "gollum" \
	--rm \
	--publish "4567:4567/tcp" \
	$IMAGE_NAME
