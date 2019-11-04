TDM-GCC MinGW Compiler


readline
--------
sudo yum install readline-devel

#ifndef __MINGW32__

For GCC I use -dM option to find out which macros are defined by mere
fact that compiler is targeted to particular architecture.

gcc -E -dM -xc /dev/null

Is my preferred way to list builtin definition (or g++ and -xc++ if my
project is C++).

Option -E tells gcc to run just preprocesor.
Option -dM tells it to dump out macro definition which are active when
all input is processed.

-xc is needed to tell gcc which language we want (C). It is becouse we
are "compiling" /dev/null, which doesn't have .c extension.
And /dev/null is used becouse on any system where gcc runs, it exists
and is, by definition, empty file.

Another possibility is

touch emptyfile.c

gcc -E -dM emptyfile.c
