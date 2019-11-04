: factorial ( n -- n! ) 1 swap 1+ 1 ?do i * loop ;

\ comment
: loopNtimes  12 1 do i factorial . cr loop ;
loopNtimes
bye
