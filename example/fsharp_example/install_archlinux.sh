#!/bin/sh

sudo pacman -S mono
git clone https://aur.archlinux.org/msbuild-stable.git
git clone https://aur.archlinux.org/fsharp.git
sudo pacman -S dotnet-sdk

exit 0
