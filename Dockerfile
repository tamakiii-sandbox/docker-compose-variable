FROM docker.io/php:7.2.29-cli AS production-pseudo

ENV MESSAGE "hello"

WORKDIR /app
COPY . /app

# --

FROM production-pseudo AS development

RUN apt-get update && \
    apt-get install -y \
      vim \
      git \
      && \
    apt-get clean
