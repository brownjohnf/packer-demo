#!/bin/sh -e

set -x

wget -O - http://download.newrelic.com/548C16BF.gpg | sudo apt-key add -
sudo sh -c 'echo "deb http://apt.newrelic.com/debian/ newrelic non-free" > /etc/apt/sources.list.d/newrelic.list'
sudo aptitude update -y
sudo aptitude install -y tmux newrelic-php5
sudo mkdir -p /var/www/www.second-apocalypse.com
sudo chown -R www-data:www-data /var/www/www.second-apocalypse.com/
sudo chmod -R 755 /var/www
