FROM ubuntu:xenial

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

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
    apt-get install -y curl openjdk-8-jdk libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev --no-install-recommends && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/opt/java-bin
ENV PATH=$JAVA_HOME/bin:$PATH

RUN curl --insecure -fSL "https://eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/R/eclipse-jee-neon-R-linux-gtk-x86_64.tar.gz&r=1" -o /opt/eclipse.tar.gz \
	&& cd /opt && tar -xvf eclipse.tar.gz && rm eclipse.tar.gz && chown ${uid}:${gid} -R /opt

#RUN echo "-vm" >> eclipse/eclipse.ini && echo "/usr/bin/java" >> eclipse/eclipse.ini
USER developer
ENV HOME /home/developer

CMD echo $PATH && /opt/eclipse/eclipse
