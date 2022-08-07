FROM kalilinux/kali-rolling

RUN \
    apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
        kali-linux-large && \
    apt-get autoremove -y && \
    apt-get clean

WORKDIR /root
