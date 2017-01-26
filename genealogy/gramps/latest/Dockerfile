FROM ubuntu:xenial
MAINTAINER Vincent Dubois <dubois.vct@free.fr>

RUN apt-get update &&  \
    DEBIAN_FRONTEND=noninteractive apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install curl build-essential xvfb xdg-utils python3-gi python3-gi-cairo python3-bsddb3 librsvg2-2 gir1.2-gtk-3.0 make python3-pillow graphviz python3-pip libglib2.0-dev libexiv2-dev libgirepository1.0-dev --no-install-recommends && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN curl --insecure -L https://github.com/gramps-project/gramps/releases/download/v4.2.5/python3-gramps_4.2.5_all.deb > /tmp/gramps.deb && \
    dpkg -i /tmp/gramps.deb

#ADD gramps_html.patch /tmp/gramps_html.patch
#RUN cd /usr/lib/python3/dist-packages/gramps/plugins/webreport/ && \
#    patch < /tmp/gramps_html.patch

RUN locale-gen fr
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR

RUN groupadd --gid 1001 gramps && \
    useradd --gid 1001 --uid 1001 gramps && \
    mkdir -p /home/gramps/workdir && \
    chown -cR gramps:gramps /home/gramps/

RUN curl http://ftp.acc.umu.se/pub/gnome/sources/gexiv2/0.10/gexiv2-0.10.4.tar.xz > gexiv2.tar.xz \
	&& tar xvf gexiv2.tar.xz && cd gexiv2-0.10.4 && ./configure --enable-introspection \
	&& make && make install && cd .. && r -Rf gexiv2-0.10.4/

WORKDIR /home/gramps/workdir

USER gramps
