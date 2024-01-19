FROM debian:bullseye

RUN apt update -y && apt install build-essential vim gdb nasm -y && \
  apt -y --purge autoremove && \
  apt -y clean && rm -rf /var/lib/apt/lists/*

RUN groupadd -g 1000 docker && useradd -r -u 1000 -g docker docker
USER docker
