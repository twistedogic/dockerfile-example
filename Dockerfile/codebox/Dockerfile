# codeBox
#
# VERSION               0.3

FROM ubuntu:12.04
# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install -y git curl tree wget unzip
RUN apt-get update
RUN apt-get install -y python-software-properties python g++ make
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs

RUN apt-get install -y ruby1.9.1 ruby1.9.1-dev rubygems1.9.1 irb1.9.1 ri1.9.1 rdoc1.9.1 build-essential libopenssl-ruby1.9.1 libssl-dev zlib1g-dev


RUN gem install compass 
RUN npm install -g codebox
RUN mkdir -p /home/workspace
RUN apt-get install -y nano vim supervisor

RUN mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

RUN \
  echo "# Install OpenSSH Server" ;\
  apt-get -q -y install openssh-server ;\
  mkdir -p /var/run/sshd ;\
  echo 'root:rootprovisional' | chpasswd ;\
  \
true
CMD ["/usr/bin/supervisord"] 