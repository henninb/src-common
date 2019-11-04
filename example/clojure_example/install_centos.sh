#!/bin/sh

sudo yum install -y java-1.8.0-openjdk make maven curl wget unzip zip
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod 755 lein
sudo mv lein /usr/bin
curl -s "https://get.sdkman.io" > sdkman.sh
sh sdkman.sh
source $HOME/.sdkman/bin/sdkman-init.sh
sdk install gradle

exit 0
