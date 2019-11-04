//comment
use std::env;
use std::process;

// (the slow, recursive way)
fn fibonacci(x : u32) -> u32 {
  match x {
    0 => 0
    , 1 => 1
    , _ => fibonacci(x-1) + fibonacci(x-2)
  }
}

fn main() {
  let args: Vec<String> = env::args().collect();
  if args.len() != 1 {
    println!("Usage: {} <noargs>", args[0]);
    process::exit(1);
  }
  //println!("Hello, world!");
  for idx_i in 1..25 {
    println!("fibonacci({})=<{}>", idx_i, fibonacci(idx_i));
  }
}
