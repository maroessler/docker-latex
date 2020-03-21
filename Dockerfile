FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y \
    texlive-full \
    biber \
    xindy \
    python-pygments \
    gnuplot \
    make \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /data
VOLUME ["/data"]
