The Gambit programming system is a full implementation of the Scheme language which conforms to the R4RS, R5RS and IEEE Scheme standards.
implementations of Scheme - Gambit-C
```
sudo yum install gambit-c
gsi example.scm
```

implementations of Scheme - guile
```
sudo yum install guile
guile  --no-auto-compile example.scm
```

Chez Scheme
Chez Scheme is both a programming language and an implementation of that language, with supporting tools and documentation.
Dependancies
```
wget https://github.com/cisco/ChezScheme/archive/v9.4.tar.gz
sudo yum install ncurses-devel
sudo yum install libXt-devel
scheme example.scm
```

MIT scheme

https://ftp.gnu.org/gnu/mit-scheme/stable.pkg/9.2/mit-scheme-9.2.tar.gz

 export MITSCHEME_LIBRARY_PATH=/usr/local/lib/mit-scheme-x86-64
./configure --prefix=/opt/mit-scheme

sudo apt-get install mit-scheme
sudo apt-get install plt-scheme

A simple, modular, and lightweight Scheme implementation
```
sudo apt-get install scheme48
```

sudo apt-get install scheme9

#A Scheme language interpreter
sudo apt-get install scm

#scm example.scm
scheme -q example.scm
#gsc example.scm
