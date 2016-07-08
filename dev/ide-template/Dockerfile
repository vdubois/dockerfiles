FROM ubuntu:xenial

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update && apt-get install -y git subversion mercurial vim wget curl openjdk-8-jdk zsh libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev --no-install-recommends && \
  apt-get clean all && \
  rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/${user} && \
    echo "${user}:x:${uid}:${gid}:${user},,,:/home/${user}:/bin/bash" >> /etc/passwd && \
    echo "${user}:x:${uid}:" >> /etc/group && \
    mkdir -p /etc/sudoers.d/ && \
    echo "${user} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${user} && \
    chmod 0440 /etc/sudoers.d/${user} && \
    chown ${uid}:${gid} -R /home/${user} && \
    mkdir -p /opt && \
    chown ${uid}:${gid} -R /opt

USER ${user}
ENV HOME /home/${user}

RUN git config --global http.sslVerify false
RUN git clone git://github.com/robbyrussell/oh-my-zsh.git /home/${user}/.oh-my-zsh \
      && cp /home/${user}/.oh-my-zsh/templates/zshrc.zsh-template /home/${user}/.zshrc
