FROM vdubois/java-oracle:1.8u92

MAINTAINER Vincent Dubois <dubois.vct@free.fr>

ENV DEBIAN_FRONTEND noninteractive

COPY AptSources /etc/apt/sources.list.d/

RUN useradd -m firefox && \
    apt-get update && \
    apt-get install -y --no-install-recommends  firefox=47.0+build3-0ubuntu0.16.04.1 \
                                                dbus-x11 \
                                                adobe-flashplugin \
                                                libxext-dev \
                                                libxrender-dev \
                                                libxtst-dev \
						libcanberra-gtk-module && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY start-firefox.sh /tmp/
RUN chmod +x /tmp/start-firefox.sh

ENTRYPOINT ["/tmp/start-firefox.sh"]
