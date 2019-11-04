function rec_for_loop( x ) {
  if( x == 0 ) {
    return 0;
  } else {
    rec_for_loop(x - 1);
    console.log(x);
    return 0;
  }
}

function rec_for_loop_reverse( x ) {
  if( x == 0 ) {
    return 0;
  } else {
    console.log(x);
    return rec_for_loop_reverse(x - 1);
  }
}

rec_for_loop(10);
rec_for_loop_reverse(10);
