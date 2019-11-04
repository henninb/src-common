#!/bin/sh

sudo yum install -y unzip
wget https://storage.googleapis.com/dart-archive/channels/stable/release/1.24.2/sdk/dartsdk-linux-x64-release.zip
unzip dartsdk-linux-x64-release.zip
sudo mv dart-sdk /opt/dart-sdk
rm dartsdk-linux-x64-release.zip
#sudo chmod -R 755 /opt/dart-sdk

exit 0
