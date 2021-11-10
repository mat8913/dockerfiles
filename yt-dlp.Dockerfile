FROM docker.io/library/debian:latest
RUN apt update && apt-get -y upgrade && apt-get -y install ffmpeg python3-pip && pip install yt-dlp
