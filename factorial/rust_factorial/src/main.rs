//comment
use std::env;
use std::process;


fn factorial(x : u64) -> u64 {
  if x == 0 {
    return 1;
  } else {
    return x * factorial(x-1);
  }
}

fn main() {
  let args: Vec<String> = env::args().collect();
  if args.len() != 1 {
    println!("Usage: {} <noargs>", args[0]);
    process::exit(1);
  }
  for idx_i in 1..14 {
    println!("factorial({})=<{}>", idx_i, factorial(idx_i));
  }
}
