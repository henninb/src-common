: fibonacci
  dup 2 <= if
    drop 1
  else
    dup 1 - recurse
    swap 2 - recurse +
  then ;

\ comment
: loopNtimes  25 1 do i fibonacci . cr loop ;
loopNtimes
bye
