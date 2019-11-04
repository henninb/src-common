wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod 755 lein
sudo mv lein /usr/bin

lein new app json_write
target/uberjar/json_write-0.1.0-SNAPSHOT-standalone.jar
