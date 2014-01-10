# icecoder
#
# VERSION               0.3

FROM ubuntu:12.04
# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

RUN apt-get update
RUN apt-get install -y git curl tree wget unzip
RUN apt-get update
RUN apt-get install -y python-software-properties python g++ make
RUN apt-get update
RUN add-apt-repository ppa:ondrej/php5-oldstable
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y php5 libapache2-mod-php5 php5-mcrypt php5-curl php5-mysql php5-gd mysql-client php5-cli

RUN apt-get install -y ruby1.9.1 ruby1.9.1-dev rubygems1.9.1 irb1.9.1 ri1.9.1 rdoc1.9.1 build-essential libopenssl-ruby1.9.1 libssl-dev zlib1g-dev

EXPOSE 80

ADD http://icecoder.net/download-zip /var/www/icecoder.zip

RUN cd /var/www && unzip -o  icecoder.zip 
RUN cd /var/www && mv ICEco* icecoder
RUN chmod -R 777 /var/www/icecoder/
RUN mkdir /var/www/projects && chmod g+s /var/www/projects


CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]