FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
    wget \
    cmake \
    make \
    g++ \
    git

RUN wget -q https://github.com/EOSIO/eosio.cdt/releases/download/v1.4.1/eosio.cdt-1.4.1.x86_64.deb && \
    apt-get install ./eosio.cdt-1.4.1.x86_64.deb && \
    rm ./eosio.cdt-1.4.1.x86_64.deb
