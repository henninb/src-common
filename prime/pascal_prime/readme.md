mingw
-----
extract gpc-20070904.i386-pc-mingw32.tar.gz
copy the mingw dir into place
answer yes to all prompting

freebsd
-------
# free pascal compiler
/usr/ports/lang/fpc
/usr/local/lib/fpc/1.0.10/ppc386
fpc prime.pas

unit files are like libraries

fpc
https://www.freepascal.org/down/x86_64/linux-austria.var
wget ftp://gd.tuwien.ac.at/languages/pascal/fpc/dist/3.0.2/x86_64-linux/rpm/fpc-3.0.2-1.x86_64.rpm
https://downloads.sourceforge.net/project/freepascal/Linux/3.0.2/fpc-3.0.2.x86_64-linux.tar?r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Ffreepascal%2Ffiles%2FLinux%2F3.0.2&ts=1506187103&use_mirror=cfhcable

mingw compiler
--------------
This distribution of GNU Pascal (GPC) comes with an
extra program called "GPCC". The program ("gpcc.exe")
will be found in your "bin" directory, alongside the
GPC compiler driver ("gpc.exe"). GPCC ("GNU Pascal
Compatibility Compiler") is a command line shell for the
GPC compiler. It attempts to mimic some of the features of
Borland's Pascal command line compilers (tpc, bpc, and
dcc32). Those who are familiar with these compilers will
find it easy to use GPCC and its configuration file
("gpcc.cfg"), as will those who are new to GPC. The
gpcc.cfg file that is supplied should be sufficient for
most needs. To use GPCC, you just need to run:
    gpcc <source_file[.pas]>

You can of course supply switches at the command line
as well. More details can be found in doc\gpc\gpcc.txt.


Try setting the "GPC_EXEC_PREFIX" environment variable - e.g.,
 export GPC_EXEC_PREFIX=/mingw/lib/gcc-lib/

First try it at the command prompt, and, if it works, then you can
make it persistent in your /etc/profile file, or (better still) in
your $HOME/.profile file.


Libraries
---------
   For some of GPC's units, you will need some standard libraries. In
particular:

Unit             Platform              Library
CRT              Unix/terminal         ncurses >= 5.0 (1), (2)
CRT              Unix/X11              PDCurses (2)
CRT              Dos, MS-Windows       PDCurses (3)
GMP              any                   gmp
RegEx            any                   rx
(debugging)      Unix, MS-Windows      ElectricFence (4)


setup mingw gpc compiler
------------------------
pathman /as C:\MinGW\lib\gcc-lib\mingw32\2.95.3-6

set LIBRARY_PATH=c:\dev_gpc\lib\;c:\dev_gpc\lib\gcc-lib\;C:\MinGW\lib\gcc-lib\mingw32\2.95.3-6;C:\MinGW\lib\gcc-lib\mingw32\3.2.3


units
-----
mysql
http://www.freepascal.org/contrib/db.php3?category=Database


another windows compiler
------------------------
pathman /as C:\pp\bin\i386-win32
