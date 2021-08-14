FROM docker.io/library/debian:latest
RUN apt update && apt-get -y upgrade && apt-get -y install borgbackup openssh-client
