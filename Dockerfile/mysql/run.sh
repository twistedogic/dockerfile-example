#/bin/bash

docker run -d -p 3306:3306 -v /home/vagrant/data/mysql:/var/lib/mysql mysql