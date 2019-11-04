\ comment
\ : example_function ( N ) N ;
: factorial ( n -- n! ) 1 swap 1+ 1 ?do i * loop ;

: loopNtimes  10 1 do i factorial . cr loop ;
loopNtimes
bye
