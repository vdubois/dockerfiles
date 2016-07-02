FROM debian:jessie

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update && \
    apt-get install -y git=1:2.1.4-2.1+deb8u2 --no-install-recommends && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/*

CMD ["git"]
