FROM ubuntu:xenial

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update \
  && apt-get install -y wget --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN wget -O /jdk.bin --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/6u33-b04/jdk-6u33-linux-x64.bin
RUN mkdir -p /usr/lib/jvm && \
  cd /usr/lib/jvm && \
  chmod +x /jdk.bin && \
  mv /jdk.bin /usr/lib/jvm/jdk.bin 

RUN cd /usr/lib/jvm && \
  ./jdk.bin 

RUN cd /usr/lib/jvm && \
  chown root:root -R jdk* && \
  rm -rf java-6-oracle && \
  mv jdk1.6.0_33 java-6-oracle 

RUN rm /usr/lib/jvm/jdk.bin

ENV JAVA_HOME /usr/lib/jvm/java-6-oracle

RUN ln -s /usr/lib/jvm/java-6-oracle/bin/java /usr/bin/java

CMD ["java", "-version"]
