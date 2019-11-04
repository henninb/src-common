#!/bin/sh

make
sudo fuser 9876/tcp
RC=$?
echo $RC
if [ $RC -eq 0 ]; then
  sudo fuser -k 9876/tcp
  sleep 7
fi
sudo fuser 9876/tcp
RC=$?
if [ $RC -ne 0 ]; then
  netstat -na | grep 9876
  RC=$?
  if [ $RC -ne 0 ]; then
    ./network_tcp_server.exe &
    sleep 4
    #./network_tcp_client.exe
    #sleep 1
    netstat -na | grep 9876
  fi
  ./network_tcp_client.exe
fi

exit 0
