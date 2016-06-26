FROM ubuntu:xenial

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update && \
    apt-get install -y curl libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev --no-install-recommends && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/opt/java-bin
ENV PATH=$JAVA_HOME/bin:$PATH

RUN curl --insecure -fSL "https://eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/neon/R/eclipse-jee-neon-R-linux-gtk-x86_64.tar.gz&r=1" -o eclipse.tar.gz \
	&& tar -xvf eclipse.tar.gz && rm eclipse.tar.gz

#RUN echo "-vm" >> eclipse/eclipse.ini && echo "/opt/java/bin" >> eclipse/eclipse.ini

CMD echo $PATH && eclipse/eclipse
