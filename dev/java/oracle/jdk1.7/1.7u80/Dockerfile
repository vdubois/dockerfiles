FROM ubuntu:xenial

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update \
  && apt-get install -y wget --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN wget -O /jdk.tgz --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u80-b15/jdk-7u80-linux-x64.tar.gz
RUN mkdir -p /usr/lib/jvm && \
  cd /usr/lib/jvm && \
  tar zxf /jdk.tgz && \
  chown root:root -R jdk* && \
  rm -rf java-7-oracle && \
  mv jdk1.7.0_80 java-7-oracle && \
  rm  /jdk.tgz

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

RUN ln -s /usr/lib/jvm/java-7-oracle/bin/java /usr/bin/java

CMD ["java", "-version"]
