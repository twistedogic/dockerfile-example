#!/bin/bash
source /etc/apache2/envvars
a2enmod rewrite
exec apache2 -D FOREGROUND