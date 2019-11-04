wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod 755 lein
sudo mv lein /usr/bin

lein new app lambda_functions
target/uberjar/lambda_functions-0.1.0-SNAPSHOT-standalone.jar
