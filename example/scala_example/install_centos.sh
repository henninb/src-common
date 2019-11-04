#!/bin/sh

sudo yum install -y wget
wget http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.rpm
sudo yum install -y scala-2.11.8.rpm
rm scala-2.11.8.rpm

exit 0
