FROM vdubois/ide-template:latest

ENV INTELLIJ_VERSION 2016.2.1

RUN curl http://download-cf.jetbrains.com/idea/ideaIU-${INTELLIJ_VERSION}.tar.gz > /opt/ideaIU-${INTELLIJ_VERSION}.tar.gz && \
    cd /opt && \
    tar xvzf ideaIU-${INTELLIJ_VERSION}.tar.gz && \
    rm -f ideaIU-${INTELLIJ_VERSION}.tar.gz && \
    mv /opt/idea* /opt/idea

CMD ["/opt/idea/bin/idea.sh"]
