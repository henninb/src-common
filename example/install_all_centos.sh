#!/bin/sh

sudo yum install -y gcc-gnat

sudo yum install -y gcc

sudo yum install -y wget java-1.8.0-openjdk make
cd $HOME
wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
chmod 755 lein
sudo mv lein /usr/bin

sudo yum install -y gcc-c++

sudo yum install -y yum-utils
sudo rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
sudo yum-config-manager --add-repo http://download.mono-project.com/repo/centos7/
sudo yum install -y mono

sudo yum install -y unzip wget
cd $HOME
wget https://storage.googleapis.com/dart-archive/channels/stable/release/1.24.2/sdk/dartsdk-linux-x64-release.zip
unzip dartsdk-linux-x64-release.zip
sudo mv dart-sdk /opt/dart-sdk
rm dartsdk-linux-x64-release.zip

sudo yum install -y wget git
cd $HOME
git clone https://github.com/elixir-lang/elixir
cd elixir
make
sudo make install
cd ..
rm -rf elixir

sudo yum install -y wget
wget http://packages.erlang-solutions.com/site/esl/esl-erlang/FLAVOUR_1_general/esl-erlang_19.3-1~centos~7_amd64.rpm
sudo rpm -ivh epel-release-latest-7.noarch.rpm
rm epel-release-latest-7.noarch.rpm
sudo yum install -y erlang

sudo yum install -y m4 emacs
cd $HOME
wget http://ftp.gnu.org/gnu/gforth/gforth-0.7.3.tar.gz
rm -rf gforth-0.7.3
tar xvf gforth-0.7.3.tar.gz
cd gforth-0.7.3
./configure
make
sudo make install
cd ..
rm -rf gforth-0.7.3

sudo yum install -y gcc-gfortran

sudo yum install -y fsharp

sudo yum install -y golang

sudo yum install -y curl zip java-1.8.0-openjdk-devel
cd $HOME
curl -s "https://get.sdkman.io" > sdkman.sh
sh sdkman.sh
source $HOME/.sdkman/bin/sdkman-init.sh
sdk install groovy
sdk install gradle

sudo yum install -y ghc
sudo yum install -y haskell-platform

sudo yum install maven
sudo yum install java-1.8.0-openjdk
echo gradle

sudo yum install -y npm

sudo yum-config-manager --add-repo https://copr.fedorainfracloud.org/coprs/nalimilan/julia/repo/epel-7/nalimilan-julia-epel-7.repo
sudo yum install -y julia

cd $HOME
curl -s "https://get.sdkman.io" > sdkman.sh
sh sdkman.sh
source $HOME/.sdkman/bin/sdkman-init.sh
sdk install kotlin
sdk install gradle
rm sdkman.sh

sudo yum install -y sbcl

sudo yum install lua

echo gcc-objc gnustep-base gnustep-make gnustep-base-devel
sudo yum install -y gcc-objc gnustep-base gnustep-make gnustep-base-devel

sudo yum install -y ocaml

sudo yum install -y php

sudo yum install -y powershell

sudo yum install -y python pylint

sudo yum install -y R

sudo yum install -y ruby

sudo yum install -y cargo rustc

sudo yum install -y wget
cd $HOME
wget http://downloads.lightbend.com/scala/2.11.8/scala-2.11.8.rpm
sudo yum install -y scala-2.11.8.rpm
rm scala-2.11.8.rpm

#echo Racket is not scheme
#wget https://mirror.racket-lang.org/installers/6.11/racket-6.11-x86_64-linux.sh
sudo yum install -y gambit-c
sudo yum install -y guile
sudo yum install -y ncurses-devel
sudo yum install -y libXt-devel

cd $HOME
wget https://github.com/cisco/ChezScheme/archive/v9.4.tar.gz

git clone git@github.com:kfl/mosml.git
cd mosml/src
make
sudo make install
cd ../..
rm -rf mosml

sudo yum install -y tcl

sudo yum install -y npm
sudo npm install -g ts-node
sudo npm install -g typescript

exit 0
