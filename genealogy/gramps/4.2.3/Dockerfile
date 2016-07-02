FROM ubuntu:xenial
MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update &&  \
    DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install curl patch xvfb xdg-utils python3-gi python3-gi-cairo python3-bsddb3 librsvg2-2 gir1.2-gtk-3.0 make python3-pillow graphviz python3-pip --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl --insecure -L https://github.com/gramps-project/gramps/releases/download/v4.2.3/python3-gramps_4.2.3_all.deb > /tmp/gramps.deb && \
    dpkg -i /tmp/gramps.deb

ADD gramps_html.patch /tmp/gramps_html.patch
RUN cd /usr/lib/python3/dist-packages/gramps/plugins/webreport/ && \
    patch < /tmp/gramps_html.patch

RUN locale-gen fr
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR

RUN groupadd --gid 1001 gramps && \
    useradd --gid 1001 --uid 1001 gramps && \
    mkdir -p /home/gramps/workdir && \
    chown -cR gramps:gramps /home/gramps/

WORKDIR /home/gramps/workdir

USER gramps
