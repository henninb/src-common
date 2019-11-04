http://www.fssnip.net
http://en.wikibooks.org/wiki/F_Sharp_Programming

F# is a .Net implementation of OCaml

on Linux it is compiled with mono
on Linux it is compiled with .Net Core

Windows install
Download the F# compiler
```
https://www.microsoft.com/en-us/download/details.aspx?id=52590
https://www.microsoft.com/en-us/download/details.aspx?id=40760
```

Centos install
```
sudo yum install yum-utils
sudo rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
yum-config-manager --add-repo http://download.mono-project.com/repo/centos7/

sudo yum install mono
sudo yum install fsharp
```

Visual Studio
Build tab of the Project Properties and set Platform Target to x86
