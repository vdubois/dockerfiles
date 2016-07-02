FROM vdubois/java-oracle:1.6u45

RUN apt-get update \
  && apt-get install -y curl --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/share/maven-2.2.1 \
  && curl -fsSL http://archive.apache.org/dist/maven/binaries/apache-maven-2.2.1-bin.tar.gz \
    | tar -xzC /usr/share/maven-2.2.1 --strip-components=1 \
  && ln -s /usr/share/maven-2.2.1/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven-2.2.1

VOLUME /root/.m2

CMD ["mvn"]
