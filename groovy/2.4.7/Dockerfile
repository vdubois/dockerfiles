FROM vdubois/java-oracle:1.8u92

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN wget --no-check-certificate -O /opt/groovy.zip https://dl.bintray.com/groovy/maven/apache-groovy-binary-2.4.7.zip 
WORKDIR /opt

RUN apt-get update \
  && apt-get install -y unzip --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN unzip groovy.zip
RUN mv groovy-2.4.7 groovy
RUN bash -c "ln -s /opt/groovy/bin/{grape,groovy,groovyConsole,groovyc,groovydoc,groovysh,java2groovy,startGroovy} /usr/local/bin/"

WORKDIR /source
