//comment
use std::env;
use std::process;


fn gcd(p : u32, q : u32) -> u32 {
    if q == 0 {
      return p;
    } else {
      return gcd( q, p % q );
    }
}

fn main() {
  let args: Vec<String> = env::args().collect();
  if args.len() != 1 {
    println!("Usage: {} <noargs>", args[0]);
    process::exit(1);
  }
  println!("gcd(4,6)=<{}>", gcd(4,6));
  println!("gcd(45,5)=<{}>", gcd(45,5));
  println!("gcd(45,7)=<{}>", gcd(45,7));
  println!("gcd(12,144)=<{}>", gcd(12,144));
}
