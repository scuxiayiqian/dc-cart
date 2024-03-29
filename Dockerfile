FROM ubuntu:14.04

ENV JAVA_VERSION 7u65
RUN apt-get update && apt-get install -y curl openjdk-7-jdk unzip wget git vim ranger openssh-server
RUN useradd -d /home/administrator -g 0 -u 510 -m -s /bin/bash administrator
RUN echo "administrator:incongruous" | chpasswd

ADD ./dc-cart /usr/src
ADD ./run.sh /run.sh
RUN chmod 755 /*.sh

EXPOSE 1099
EXPOSE 22
CMD ./run.sh
