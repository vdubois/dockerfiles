FROM node:6.10.3

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update && apt-get install -y awscli --no-install-recommends && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/*
