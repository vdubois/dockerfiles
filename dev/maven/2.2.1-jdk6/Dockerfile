FROM vdubois/java-oracle:1.6u45

RUN apt-get update \
  && apt-get install -y curl --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/share/maven-2.2.1 \
  && curl -fsSL http://archive.apache.org/dist/maven/binaries/apache-maven-2.2.1-bin.tar.gz \
    | tar -xzC /usr/share/maven-2.2.1 --strip-components=1 \
  && ln -s /usr/share/maven-2.2.1/bin/mvn /usr/bin/mvn

RUN export uid=1001 gid=1001 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    mkdir -p /etc/sudoers.d/ && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer && \
    chown ${uid}:${gid} -R /usr/share/maven-2.2.1

USER developer

ENV MAVEN_HOME /usr/share/maven-2.2.1

CMD ["mvn"]
