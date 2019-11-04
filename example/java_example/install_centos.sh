#!/bin/sh

sudo yum install -y java-1.8.0-openjdk maven curl unzip zip
curl -s "https://get.sdkman.io" > sdkman.sh
sh sdkman.sh
source $HOME/.sdkman/bin/sdkman-init.sh
sdk install gradle

exit 0
