FROM ubuntu:18.04

RUN apt-get update && apt-get install -y mpd

COPY mpd.conf /etc/mpd.conf

ENTRYPOINT ["mpd", "--no-daemon", "--stdout", "/etc/mpd.conf"]
