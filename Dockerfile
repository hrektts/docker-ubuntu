FROM ubuntu:trusty-20151208
MAINTAINER mps299792458@gmail.com

RUN echo 'APT::Install-Recommends 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && echo 'APT::Install-Suggests 0;' >> /etc/apt/apt.conf.d/01norecommends \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y vim-tiny wget sudo \
    net-tools ca-certificates unzip \
 && rm -rf /var/lib/apt/lists/*
