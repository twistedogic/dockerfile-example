#/bin/bash

docker run -d -v -p 9876:9876 -p 9000:9000 -p 9002:22 -p 35729:35729 /home/vagrant/testrunner:/home/testrunner testrunner
