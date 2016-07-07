FROM vdubois/ide-template:latest

ENV INTELLIJ_VERSION 2016.1.3

COPY ideaIU-${INTELLIJ_VERSION}.tar.gz /opt/ideaIU-${INTELLIJ_VERSION}.tar.gz

RUN cd /opt && \
    tar xvzf ideaIU-${INTELLIJ_VERSION}.tar.gz && \
    rm -f ideaIU-${INTELLIJ_VERSION}.tar.gz && \
    mv /opt/idea* /opt/idea

CMD ["/opt/idea/bin/idea.sh"]
