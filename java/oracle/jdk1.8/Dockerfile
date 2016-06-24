FROM debian:jessie

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update \
  && apt-get install -y wget --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN wget -O /jdk.tgz --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u92-b14/jdk-8u92-linux-x64.tar.gz
RUN mkdir -p /usr/lib/jvm && \
  cd /usr/lib/jvm && \
  tar zxf /jdk.tgz && \
  chown root:root -R jdk* && \
  rm -rf java-8-oracle && \
  mv jdk1.8.0_92 java-8-oracle && \
  rm /jdk.tgz

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN ln -s /usr/lib/jvm/java-8-oracle/bin/java /usr/bin/java

CMD ["java", "-version"]
