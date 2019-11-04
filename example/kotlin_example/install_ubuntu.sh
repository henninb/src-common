#!/bin/sh

curl -s "https://get.sdkman.io" > sdkman.sh
sh sdkman.sh
. $HOME/.sdkman/bin/sdkman-init.sh
sdk install kotlin
sdk install gradle
rm sdkman.sh

exit 0
