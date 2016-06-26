FROM ubuntu:xenial

ENV INTELLIJ_VERSION 2016.1.3

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/* && \
    curl http://download-cf.jetbrains.com/idea/ideaIU-${INTELLIJ_VERSION}.tar.gz > /root/ideaIU-${INTELLIJ_VERSION}.tar.gz && \
    cd /root && \
    tar xvzf ideaIU-${INTELLIJ_VERSION}.tar.gz && \
    rm -f ideaIU-${INTELLIJ_VERSION}.tar.gz && \
    mv /root/idea* /root/idea

ENTRYPOINT [ "/root/idea/bin/idea.sh" ]
