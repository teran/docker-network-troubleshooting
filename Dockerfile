FROM ubuntu:xenial

RUN apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install -y \
      bind9-host \
      curl \
      dnsutils \
      iptables \
      iputils-ping \
      mtr \
      nmap \
      telnet \
      wget && \
    apt-get clean && \
    rm -rvf /var/lib/apt/lists/*
