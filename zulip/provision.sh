#!/bin/bash

set -e
set -x

apt-get install openssl

cd /root
wget https://www.zulip.com/dist/releases/zulip-server-1.3.6.tar.gz
echo "665a1e6ef840b3a86cc18946429ad1c0033d27a2 zulip-server-1.3.6.tar.gz" | sha1sum -c
tar -xf zulip-server-1.3.6.tar.gz
mv zulip-server-1.3.6 zulip

openssl genrsa -des3 -passout pass:x -out server.pass.key 4096
openssl rsa -passin pass:x -in server.pass.key -out zulip.key
rm server.pass.key
openssl req -new -key zulip.key -out server.csr \
  -subj "/C=US/ST=Washington/L=Seattle/O=Anonymous"
openssl x509 -req -days 365 -in server.csr -signkey zulip.key \
  -out zulip.combined-chain.crt
rm server.csr
cp zulip.key /etc/ssl/private/zulip.key
cp zulip.combined-chain.crt /etc/ssl/certs/zulip.combined-chain.crt

cd /root/zulip
./scripts/setup/install
