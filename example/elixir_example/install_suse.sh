#!/bin/sh

sudo zypper addrepo https://download.opensuse.org/repositories/devel:languages:erlang/openSUSE_Leap_42.3/devel:languages:erlang.repo
sudo zypper refresh
sudo zypper install elixir

exit 0
