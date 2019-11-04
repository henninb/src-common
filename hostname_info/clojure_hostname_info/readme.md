wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod 755 lein
sudo mv lein /usr/bin

lein new app hostname_info
target/uberjar/hostname_info-0.1.0-SNAPSHOT-standalone.jar
