# Version: 0.0.1
FROM ubuntu:12.04
MAINTAINER Artem Kobrin "kobrin.artem@gmail.com"
RUN apt-get update
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
ADD id_rsa.pub /root/.ssh/authorized_key
RUN echo 'root:password' |chpasswd
EXPOSE 22
