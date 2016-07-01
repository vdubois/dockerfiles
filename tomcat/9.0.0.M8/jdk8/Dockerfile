FROM vdubois/java-oracle:1.8u92

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update && \
    apt-get install -y curl --no-install-recommends && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/*

ENV CATALINA_HOME /usr/local/tomcat-9.0.0.M8
ENV PATH $CATALINA_HOME/bin:$PATH
RUN mkdir -p "$CATALINA_HOME"
WORKDIR $CATALINA_HOME

ENV TOMCAT_MAJOR 9
ENV TOMCAT_VERSION 9.0.0.M8
ENV TOMCAT_TGZ_URL https://www.apache.org/dist/tomcat/tomcat-$TOMCAT_MAJOR/v$TOMCAT_VERSION/bin/apache-tomcat-$TOMCAT_VERSION.tar.gz

RUN set -x \
	\
	&& curl --insecure -fSL "$TOMCAT_TGZ_URL" -o tomcat.tar.gz \
	&& tar -xvf tomcat.tar.gz --strip-components=1 \
	&& rm bin/*.bat \
	&& rm tomcat.tar.gz*

EXPOSE 8080
CMD ["catalina.sh", "run"]
