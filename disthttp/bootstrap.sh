#!/bin/sh -e

set -x

sudo apt-get update -y
sudo apt-get install -y build-essential curl patch gawk g++ gcc make libc6-dev \
  libreadline6-dev zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 \
  autoconf libgdbm-dev libncurses5-dev automake libtool bison pkg-config \
  libffi-dev git-core
mkdir -p ~/downloads
cd ~/downloads
wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p385.tar.gz
tar xvfz ruby-1.9.3-p385.tar.gz
cd ruby-1.9.3-p385
./configure
make
sudo make install
sudo gem install bundler
