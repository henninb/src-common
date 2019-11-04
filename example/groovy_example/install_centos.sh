#!/bin/sh

sudo yum install -y curl zip java-1.8.0-openjdk-devel
curl -s "https://get.sdkman.io" > sdkman.sh
sh sdkman.sh
source $HOME/.sdkman/bin/sdkman-init.sh
sdk install groovy
sdk install gradle

exit 0
