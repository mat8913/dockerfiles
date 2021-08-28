FROM docker.io/library/debian:bullseye
RUN echo deb-src http://deb.debian.org/debian bullseye main >> /etc/apt/sources.list && \
    apt-get clean && \
    apt update && \
    apt-get -y upgrade && \
    apt-get -y install fakeroot git kernel-wedge quilt ccache flex bison libssl-dev dh-exec rsync libelf-dev bc python3 dwarves gcc-arm-linux-gnueabihf crossbuild-essential-arm64 && \
    apt-get clean
