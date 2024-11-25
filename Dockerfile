FROM ruby:3.3.6-alpine

RUN apk add --no-cache \
	build-base \
	cmake \
	icu-dev \
	icu-libs \
	openssl-dev \
	--virtual build-deps \
	&& apk add --no-cache \
	libssl3 \
	&& apk add --no-cache \
	git \
	&& gem install \
	github-markdown \
	gollum \
	&& apk del build-deps \
	&& mkdir -p /opt/wiki \
	&& git init /opt/wiki

CMD [ "/usr/local/bundle/bin/gollum", "/opt/wiki" ]
EXPOSE 4567
WORKDIR /opt/wiki
