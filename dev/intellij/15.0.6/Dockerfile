FROM ubuntu:xenial

ENV INTELLIJ_VERSION 15.0.6

RUN export uid=1001 gid=1001 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    mkdir -p /etc/sudoers.d/ && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer && \
    mkdir -p /opt

RUN apt-get update && \
    apt-get install -y --no-install-recommends curl git openjdk-8-jdk && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/* && \
    curl http://download-cf.jetbrains.com/idea/ideaIU-${INTELLIJ_VERSION}.tar.gz > /opt/ideaIU-${INTELLIJ_VERSION}.tar.gz && \
    cd /opt && \
    tar xvzf ideaIU-${INTELLIJ_VERSION}.tar.gz && \
    rm -f ideaIU-${INTELLIJ_VERSION}.tar.gz && \
    mv /opt/idea* /opt/idea && \
    chown ${uid}:${gid} -R /opt

USER developer
ENV HOME /home/developer

RUN git config --global http.sslVerify false

ENTRYPOINT [ "/opt/idea/bin/idea.sh" ]
