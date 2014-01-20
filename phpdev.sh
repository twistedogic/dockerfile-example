#/bin/bash

docker run -d -v /home/vagrant/icecoder:/home/host -p 9002:22 sshd
docker run -d -p 80:80 -v /home/vagrant/icecoder:/var/www phpTest
docker run -d -p 3306:3306 -v /home/vagrant/data/mysql:/var/lib/mysql mysql