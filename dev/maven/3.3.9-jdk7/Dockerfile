FROM vdubois/java-oracle:1.7u80

RUN apt-get update \
  && apt-get install -y curl --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ENV MAVEN_VERSION 3.3.9

RUN mkdir -p /usr/share/maven-$MAVEN_VERSION \
  && curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz \
    | tar -xzC /usr/share/maven-$MAVEN_VERSION --strip-components=1 \
  && ln -s /usr/share/maven-$MAVEN_VERSION/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven-$MAVEN_VERSION

VOLUME /root/.m2

CMD ["mvn"]
