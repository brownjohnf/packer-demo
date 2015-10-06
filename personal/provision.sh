#!/bin/sh

set -e

apt-get update -y
apt-get install -y aptitude
aptitude update -y
aptitude install -y fail2ban unattended-upgrades logwatch

useradd jackb
mkdir -p /home/jackb/.ssh
chmod 0700 /home/jackb/.ssh
curl https://raw.githubusercontent.com/brownjohnf/public-keys/master/ingrid.pub > /home/jackb/.ssh/authorized_keys
curl https://raw.githubusercontent.com/brownjohnf/public-keys/master/jeeves.pub >> /home/jackb/.ssh/authorized_keys
curl https://raw.githubusercontent.com/brownjohnf/public-keys/master/jfb.pub >> /home/jackb/.ssh/authorized_keys
chmod 400 /home/jackb/.ssh/authorized_keys
chown -R jackb: /home/jackb

