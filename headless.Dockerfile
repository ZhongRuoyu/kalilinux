# syntax=docker/dockerfile:1

FROM kalilinux/kali-rolling

RUN <<-"EOF"
    apt-get update
    apt-get upgrade -y
    DEBIAN_FRONTEND=noninteractive apt-get install -y kali-linux-headless
    apt-get autoremove -y
    rm -rf /var/lib/apt/lists/*
EOF

WORKDIR /root
