FROM vdubois/ide-template:latest

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

#RUN apt-get update && \
#    apt-get install -y curl libgtk2.0-0 libcanberra-gtk-module libxext-dev libxrender-dev libxtst-dev --no-install-recommends && \
#    apt-get clean all && \
#    rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/opt/java-bin
ENV PATH=$JAVA_HOME/bin:$PATH

COPY eclipse.tar.gz /opt/eclipse.tar.gz
RUN cd /opt && tar -xvf eclipse.tar.gz && rm eclipse.tar.gz

RUN curl --insecure -fSL "https://projectlombok.org/downloads/lombok.jar" -o /opt/lombok.jar && \
  cd /opt && java -jar lombok.jar install /opt/eclipse

CMD echo $PATH && /opt/eclipse/eclipse
