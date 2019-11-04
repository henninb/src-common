wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod 755 lein
sudo mv lein /usr/bin

lein new app degrees_to_radians
target/uberjar/degrees_to_radians-0.1.0-SNAPSHOT-standalone.jar
