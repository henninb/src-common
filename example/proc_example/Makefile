ifeq ($(OS),Windows_NT)
  OS := Windows_NT
else
  OS := $(shell uname -s)
endif

all: unix
Windows_NT:
	@gcc example.c -o example.exe -O2 -Wall
unix:
#sudo mkdir -p /usr/lib/oracle/12.1/client64/precomp/admin/
#/usr/lib/oracle/12.1/client64/lib/precomp/admin/pcscfg.cfg
#sudo ln -s /usr/lib/oracle/12.1/client64/lib/precomp/admin/pcscfg.cfg /usr/lib/oracle/12.1/client64/precomp/admin/pcscfg.cfg
#/usr/lib/oracle/12.1/client64/lib/
	@/usr/lib/oracle/12.1/client64/bin/proc code=ansi sqlcheck=semantic userid=system/monday1@localhost release_cursor=NO hold_cursor=YES sys_include=/usr/lib/gcc/x86_64-redhat-linux/4.8.5/include sys_include=/usr/include/oracle/12.1/client64 include=/usr/include include=/usr/lib/oracle/12.1/client64/lib/precomp/public char_map=varchar2 define=__x86_64__ iname=example.pc ltype=short oname=example.c
	@gcc example.c -o example.exe -L/usr/lib/oracle/12.1/client64/lib/ -O2 -Wall -lm -lclntsh
clean:
	rm example.exe
