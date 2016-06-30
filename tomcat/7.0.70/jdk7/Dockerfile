FROM vdubois/java-oracle:1.7u80

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update && \
    apt-get install -y curl --no-install-recommends && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/*

ENV CATALINA_HOME /usr/local/tomcat-7.0.70
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME

ENV TOMCAT_TGZ_URL http://archive.apache.org/dist/tomcat/tomcat-7/v7.0.70/bin/apache-tomcat-7.0.70.tar.gz

RUN set -x \
        \
        && curl --insecure -fSL "$TOMCAT_TGZ_URL" -o tomcat.tar.gz \
        && tar -xvf tomcat.tar.gz --strip-components=1 \
        && rm bin/*.bat \
        && rm tomcat.tar.gz*

EXPOSE 8080
CMD ["catalina.sh", "run"]
