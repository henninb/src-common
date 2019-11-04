#!/bin/sh

sudo pacman -S jdk8-openjdk maven curl unzip zip
curl -s "https://get.sdkman.io" > sdkman.sh
sh sdkman.sh
source $HOME/.sdkman/bin/sdkman-init.sh
sdk install gradle

exit 0
