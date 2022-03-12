FROM ruby:alpine3.7

RUN apk add --no-cache \
	build-base \
	cmake \
	icu-dev \
	icu-libs \
	openssl-dev \
	--virtual build-deps \
	&& apk add --no-cache \
	--repository=http://dl-cdn.alpinelinux.org/alpine/v3.8/main \
	libssl1.0 \
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
