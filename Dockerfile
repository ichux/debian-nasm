FROM debian:stable-slim

RUN apt-get update -y && apt-get install build-essential vim gdb nasm -y && \
  apt-get -y --purge autoremove && \
  apt-get -y clean && rm -rf /var/lib/apt/lists/*

RUN groupadd -g 1000 docker && useradd -r -u 1000 -g docker docker
USER docker

WORKDIR /nasm
