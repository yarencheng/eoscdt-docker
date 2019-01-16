FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y \
    wget \
    cmake \
    make \
    g++

RUN wget -q https://github.com/EOSIO/eosio.cdt/releases/download/v1.5.0/eosio.cdt_1.5.0-1_amd64.deb && \
    apt-get install ./eosio.cdt_1.5.0-1_amd64.deb && \
    rm ./eosio.cdt_1.5.0-1_amd64.deb
