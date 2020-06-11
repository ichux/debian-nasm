FROM debian:stable-slim

RUN apt-get update -y && apt-get install build-essential vim gdb nasm -y && \
  apt-get -y --purge autoremove && \
  apt-get -y clean && rm -rf /var/lib/apt/lists/*

RUN groupadd -g 999 docker && useradd -r -u 999 -g docker docker

WORKDIR /source
COPY source /source

USER docker
