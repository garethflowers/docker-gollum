FROM ruby:4.0.0-alpine

RUN apk add --no-cache --virtual build-deps \
	build-base \
	cmake \
	icu-dev \
	icu-libs \
	openssl-dev \
	&& apk add --no-cache \
	libssl3 \
	git \
	&& gem install \
	github-markdown \
	gollum \
	-- --with-cflags="-Wno-error=implicit-function-declaration" \
	&& apk del build-deps \
	&& mkdir -p /opt/wiki \
	&& git init /opt/wiki

CMD [ "/usr/local/bundle/bin/gollum", "/opt/wiki" ]
EXPOSE 4567
WORKDIR /opt/wiki
