FROM debian:11-slim

ARG DEBIAN_FRONTEND noninteractive
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

WORKDIR mqtttest

COPY ./mongoose.c . 
COPY ./mongoose.h .
COPY ./main.c .
COPY ./CMakeLists.txt .

COPY ./build_and_run.sh build_and_run.sh

ENTRYPOINT ["/mqtttest/build_and_run.sh"]
