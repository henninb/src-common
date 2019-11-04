mlton
mosml
https://www.itu.dk/~sestoft/mosml/mosml-2.01-1.exe
smlnj

git clone git@github.com:kfl/mosml.git

mlton -target i386-pc-cygwin hello-world.sml

http://smlnj.org/install/

export SMLROOT=/opt/sml

sudo mkdir /usr/local/sml
export SMLROOT=/usr/local/sml

tar xzvf config.tgz

http://mlton.org/Download
http://www.hardcoreprocessing.com/pro/mltonwin32/

install mlton

cygwin
------
# mlton
c:\cygwin\mlton-20041109-1.i386-cygwin.tar
cd c:\cygwin
tar xvf mlton-20041109-1.i386-cygwin.tar

basic structures
----------------
Array
Bool
General
IO
List
Real
RealArray
String
Vector

mosml
-----
# all apps are dependant on camlrt.dll
pathman /as c:\mosml\bin
set MOSMLLIB=c:\mosml\lib

-standalone

mosmlc <src> -o exefile
