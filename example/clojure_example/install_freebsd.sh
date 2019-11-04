#!/bin/sh

sudo pkg install -y gmake wget openjdk8-8.144.1
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod 755 lein
sudo mv lein /usr/local/bin
echo "use gmake and not vanilla (BSD) make for building"

exit 0
