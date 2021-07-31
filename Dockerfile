FROM fedora:latest

WORKDIR /data

RUN dnf install -y ansible
