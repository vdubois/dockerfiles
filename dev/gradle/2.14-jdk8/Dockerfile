FROM vdubois/java-oracle:1.8u92

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update \
  && apt-get install -y curl unzip --no-install-recommends \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

ENV GRADLE_VERSION 2.14

WORKDIR /usr/bin
RUN curl -LO --insecure https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-all.zip && \
  unzip gradle-${GRADLE_VERSION}-all.zip && \
  ln -s gradle-${GRADLE_VERSION} gradle && \
  rm gradle-${GRADLE_VERSION}-all.zip

ENV GRADLE_HOME /usr/bin/gradle
ENV PATH $PATH:$GRADLE_HOME/bin

ENTRYPOINT ["gradle"]
CMD ["-version"]
