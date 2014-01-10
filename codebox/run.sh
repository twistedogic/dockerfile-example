#/bin/bash

docker run -d -p 8000:8000 -p 9000:9000 -p 80:80 -p 35729:35729 -p 9001:9001 -p 7777:7777 codeBox codebox run /var/www/public -p 7777
