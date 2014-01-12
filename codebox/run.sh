#/bin/bash

docker run -d -v /home/vagrant/codebox:/home/host -p 9000:9000 -p 35729:35729 -p 9001:9001 -p 7777:7777 codeBox codebox run /home/host -p 7777
