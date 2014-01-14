#/bin/bash

docker run -d -v /home/vagrant/codebox/webapp:/home/host -p 9000:9000 -p 35729:35729 -p 9001:9001 -p 7777:7777 codeBox codebox run /home/host/app -p 7777
docker run -d -p 80:80 -v /home/vagrant/icecoder:/var/www/project phpTest
docker run -d -p 3306:3306 -v /home/vagrant/data/mysql:/var/lib/mysql mysql