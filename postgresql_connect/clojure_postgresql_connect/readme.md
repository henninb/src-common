sudo bash -c "cd /usr/local/bin && curl -fsSLo boot https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && chmod 755 boot"
look into the nailgun program for running clojure

wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod 755 lein
sudo mv lein /usr/bin

lein new app postgresql_connect
target/uberjar/postgresql_connect-0.1.0-SNAPSHOT-standalone.jar
