//comment
use std::env;
use std::process;


fn example_function(n : i32) -> i32 {
  let mut x = 0;

  x = (n + n - n) * (n / 1);
  x = x * (1.25_f32).floor() as i32;

  if x < 0  {
    x = (x).abs();
  }
  return x;
}

fn main() {
  let args: Vec<String> = env::args().collect();
  if args.len() != 1 {
    println!("Usage: {} <noargs>", args[0]);
    process::exit(1);
  }
  for idx_i in 0..10 {
    println!("example_function({})=<{}>", idx_i, example_function(idx_i));
  }
}
