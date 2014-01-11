# codeBox
#
# VERSION               0.3

FROM ubuntu:12.04
# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install -y curl wget unzip supervisor git
RUN apt-get update
RUN apt-get install -y python-software-properties python g++ make
RUN add-apt-repository ppa:ondrej/php5-oldstable
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y php5 libapache2-mod-php5 php5-mcrypt php5-curl php5-mysql php5-gd mysql-client php5-cli
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin && mv /usr/local/bin/composer.phar /usr/local/bin/composer
ADD https://raw.github.com/tutumcloud/tutum-docker-php/master/start.sh /start.sh
ADD https://raw.github.com/tutumcloud/tutum-docker-php/master/run.sh /run.sh
RUN chmod 755 /*.sh
ADD https://raw.github.com/tutumcloud/tutum-docker-php/master/supervisord-apache2.conf /etc/supervisor/conf.d/supervisord-apache2.conf

ADD http://icecoder.net/download-zip /var/www/icecoder.zip

RUN cd /var/www && unzip -o  icecoder.zip 
RUN cd /var/www && mv ICEco* icecoder
RUN cd /var/www && rm icecoder.zip
RUN chmod -R 777 /var/www/icecoder/

CMD ["/run.sh"]
