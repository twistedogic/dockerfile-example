# sshd
#
# VERSION               0.3

FROM ubuntu:12.04
# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get upgrade
RUN apt-get -y update
RUN apt-get install -y git curl tree wget unzip
RUN apt-get install -y python-software-properties python g++ make
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN add-apt-repository -y ppa:mozillateam/firefox-next
RUN apt-get -y update
RUN apt-get install -y nodejs
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list
RUN apt-get -y update

RUN apt-get install -y ruby1.9.1 ruby1.9.1-dev rubygems1.9.1 irb1.9.1 ri1.9.1 rdoc1.9.1 build-essential libopenssl-ruby1.9.1 libssl-dev zlib1g-dev
RUN apt-get update
RUN apt-get install -y -q firefox google-chrome-beta openjdk-7-jre-headless nodejs
RUN apt-get install -y -q x11vnc xvfb
RUN gem install compass 
RUN npm install -g yo
RUN npm install -g karma
RUN npm install -g mocha
RUN npm install -g phantomjs
RUN npm install -g casperjs
RUN npm install -g generator-karma-jquery
RUN npm install -g instant-server
RUN npm install -g protractor
RUN \
  echo "# Install OpenSSH Server" ;\
  apt-get -q -y install openssh-server ;\
  mkdir -p /var/run/sshd ;\
  echo 'root:passw0rd' | chpasswd ;\
  \
true

CMD ["/usr/sbin/sshd", "-D"]
