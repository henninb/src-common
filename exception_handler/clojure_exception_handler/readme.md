wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod 755 lein
sudo mv lein /usr/bin

lein new app exception_handler
target/uberjar/exception_handler-0.1.0-SNAPSHOT-standalone.jar
