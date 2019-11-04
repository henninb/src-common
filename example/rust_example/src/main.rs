//comment
use std::env;
use std::process;


fn example_function(x : u32) -> u32 {
  return x;
}

fn main() {
  let args: Vec<String> = env::args().collect();
  if args.len() != 1 {
    println!("Usage: {} <noargs>", args[0]);
    process::exit(1);
  }
  //println!("Hello, world!");
  for idx_i in 0..10 {
    println!("example_function({})=<{}>", idx_i, example_function(idx_i));
  }
}
