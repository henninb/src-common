#!/bin/sh

echo sudo apt-get install groovy gradle make
curl -s "https://get.sdkman.io" > sdkman.sh
sh sdkman.sh
#source $HOME/.sdkman/bin/sdkman-init.sh
. $HOME/.sdkman/bin/sdkman-init.sh

sdk install groovy
sdk install gradle
rm sdkman.sh

exit 0
