#!/bin/sh

sudo apt-get install -y openjdk-8-jdk
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod 755 lein
sudo mv lein /usr/bin

exit 0
