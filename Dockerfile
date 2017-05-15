FROM ubuntu:xenial-20170417.1
LABEL maintainer "mps299792458@gmail.com" \
      com.katsutoshihorie.version="16.04.20170417.1"

RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
    ca-certificates \
    net-tools \
    sudo \
    unzip \
    vim-tiny \
    wget \
 && rm -rf /var/lib/apt/lists/*
