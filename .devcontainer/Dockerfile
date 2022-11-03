FROM debian:11

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get -y --quiet --no-install-recommends install \
    ccache \
    cmake \
    bzip2 \
    g++ \
    gcc \
    gdb \
    wget \
    make \
    git \
	&& apt-get -y autoremove \
	&& apt-get clean autoclean \
	&& rm -rf /var/lib/apt/lists/{apt,dpkg,cache,log} /tmp/* /var/tmp/*

CMD ["/bin/bash"]
