sudo yum install gcc-objc gnustep-base gnustep-make gnustep-base-devel

/usr/lib64/GNUstep/Makefiles/GNUstep.sh
source /usr/lib64/GNUstep/Makefiles/GNUstep.sh

gcc `gnustep-config --objc-flags` -lgnustep-base postgresql_connect.m -o postgresql_connect.exe


//gcc -c -Wno-import hello.m
//gcc -o hello.exe -Wno-import hello.o -lobjc
//sudo apt-get install gobjc



sh /usr/share/GNUstep/Makefiles/GNUstep.sh
