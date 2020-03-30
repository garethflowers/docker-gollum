FROM ruby:alpine3.7

RUN apk update
RUN apk add --no-cache --virtual build-deps build-base
RUN apk add --no-cache icu-dev icu-libs cmake git

RUN gem install gollum
RUN gem install github-markdown

RUN apk del cmake build-base build-deps icu-dev

WORKDIR /wiki

ENTRYPOINT ["gollum", "--user-icons", "gravatar", "--no-edit"]
EXPOSE 8080
