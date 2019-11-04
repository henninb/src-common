#!/bin/sh

# install rustup to install version of rust
curl -sSf https://sh.rustup.rs | sh

#echo sudo yum install -y cargo rustc
#source $HOME/.cargo/env
echo rustup install nightly
echo rustup install 1.17
echo rustup show
echo rustup run nightly rustc --version
echo rustup override set 1.25.0

exit 0
