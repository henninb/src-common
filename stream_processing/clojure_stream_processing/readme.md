sudo bash -c "cd /usr/local/bin && curl -fsSLo boot https://github.com/boot-clj/boot-bin/releases/download/latest/boot.sh && chmod 755 boot"
look into the nailgun program for running clojure

lein new app example
target/uberjar/example-0.1.0-SNAPSHOT-standalone.jar

java -cp /usr/share/java/clojure.jar clojure.main src/example.clj

#repl
java -cp /usr/share/java/clojure.jar  clojure.main

java -jar uberjar/clojure-noob-0.1.0-SNAPSHOT-standalone.jar


# notepad++ user defined languages
http://docs.notepad-plus-plus.org/index.php/User_Defined_Language_Files
