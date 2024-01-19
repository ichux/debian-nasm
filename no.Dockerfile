FROM debian:bullseye

RUN apt-get update -y && apt-get install build-essential vim gdb nasm -y && \
  apt-get -y --purge autoremove && \
  apt-get -y clean && rm -rf /var/lib/apt/lists/*
