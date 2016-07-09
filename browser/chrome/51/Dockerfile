FROM ubuntu:xenial

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

ENV DEBIAN_FRONTEND noninteractive

COPY AptSources /etc/apt/sources.list.d/

RUN useradd -m google-chrome; \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A040830F7FAC5991 \
    && apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates \
                                                  gconf-service \
                                                  hicolor-icon-theme \
                                                  libappindicator1 \
                                                  libasound2 \
                                                  libcurl3 \
                                                  libexif-dev \
                                                  libgconf-2-4 \
                                                  libgl1-mesa-dri \
                                                  libgl1-mesa-glx \
                                                  libnspr4 \
                                                  libnss3 \
                                                  libpango1.0-0 \
                                                  libv4l-0 \
                                                  libxss1 \
                                                  libxtst6 \
                                                  xdg-utils \
                                                  google-chrome-stable=51.0.2704.106-1 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY start-google-chrome.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start-google-chrome.sh

ENTRYPOINT ["/usr/local/bin/start-google-chrome.sh"]
