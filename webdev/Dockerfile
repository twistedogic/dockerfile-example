# webdev
#
# VERSION               0.3

FROM ubuntu:12.04
# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade
RUN apt-get update
RUN apt-get install -y curl wget unzip supervisor git tree
RUN apt-get update
RUN apt-get install -y python-software-properties python g++ make
RUN add-apt-repository ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs
RUN apt-get install -y ruby1.9.1 ruby1.9.1-dev rubygems1.9.1 irb1.9.1 ri1.9.1 rdoc1.9.1 build-essential libopenssl-ruby1.9.1 libssl-dev zlib1g-dev
RUN add-apt-repository ppa:ondrej/php5-oldstable
RUN apt-get update
RUN apt-get install -y apache2
RUN apt-get install -y php5 libapache2-mod-php5 php5-mcrypt php5-curl php5-mysql php5-gd mysql-client php5-cli
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin && mv /usr/local/bin/composer.phar /usr/local/bin/composer
ADD ./start.sh /start.sh
ADD ./run.sh /run.sh
RUN chmod 755 /*.sh
ADD https://raw.github.com/tutumcloud/tutum-docker-php/master/supervisord-apache2.conf /etc/supervisor/conf.d/supervisord-apache2.conf
ADD ./default /etc/apache2/sites-available/default
RUN \
  echo "# Install OpenSSH Server" ;\
  apt-get -q -y install openssh-server ;\
  mkdir -p /var/run/sshd ;\
  echo 'root:passw0rd' | chpasswd ;\
  \
true
RUN npm install -g yo
RUN gem install compass
CMD ["/usr/sbin/sshd", "-D"]
