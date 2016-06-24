FROM debian:jessie

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update \
  && apt-get install -y wget --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN wget -O /jdk.bin --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/6u45-b06/jdk-6u45-linux-x64.bin
RUN mkdir -p /usr/lib/jvm && \
  cd /usr/lib/jvm && \
  chmod +x /jdk.bin && \
  mv /jdk.bin /usr/lib/jvm/jdk.bin && \
  ./jdk.bin && \
  chown root:root -R jdk* && \
  rm -rf java-8-oracle && \
  mv jdk1.6.0_45 java-6-oracle 

RUN rm /usr/lib/jvm/jdk.bin

ENV JAVA_HOME /usr/lib/jvm/java-6-oracle

RUN ln -s /usr/lib/jvm/java-6-oracle/bin/java /usr/bin/java

CMD ["java", "-version"]
