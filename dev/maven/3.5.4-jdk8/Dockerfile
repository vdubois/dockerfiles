FROM vdubois/java-oracle:1.8u181

RUN apt-get update \
  && apt-get install -y curl --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /usr/share/maven-3.5.4 \
  && curl --insecure -fsSL http://apache.crihan.fr/dist/maven/maven-3/3.5.4/binaries/apache-maven-3.5.4-bin.tar.gz \
    | tar -xzC /usr/share/maven-3.5.4 --strip-components=1 \
  && ln -s /usr/share/maven-3.5.4/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven-3.5.4

CMD ["mvn"]
