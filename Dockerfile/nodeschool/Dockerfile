# sshd
#
# VERSION               0.3

FROM ubuntu:12.04
# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get upgrade
RUN apt-get -y update
RUN apt-get install -y git curl tree wget unzip nano vim
RUN apt-get install -y python-software-properties python g++ make
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get -y update
RUN apt-get install -y nodejs

RUN apt-get install -y ruby1.9.1 ruby1.9.1-dev rubygems1.9.1 irb1.9.1 ri1.9.1 rdoc1.9.1 build-essential libopenssl-ruby1.9.1 libssl-dev zlib1g-dev
RUN apt-get update
RUN npm install -g yo
RUN npm install -g learnyounode
RUN npm install -g stream-adventure
RUN npm install -g bytewiser@latest
RUN npm install -g functional-javascript-workshop@latest
RUN npm install -g git-it@latest
RUN npm install -g instant-server
RUN npm install -g levelmeup
RUN npm install -g expressworks@latest
RUN npm install -g promise-it-wont-hurt@latest
RUN npm install -g async-you
RUN npm install -g scripted
RUN \
  echo "# Install OpenSSH Server" ;\
  apt-get -q -y install openssh-server ;\
  mkdir -p /var/run/sshd ;\
  echo 'root:passw0rd' | chpasswd ;\
  \
true

CMD ["/usr/sbin/sshd", "-D"]
