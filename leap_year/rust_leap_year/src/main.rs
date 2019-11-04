//comment
use std::env;
use std::process;


fn leap_year(year : u32) -> bool {
    if year > 1581 {
        return ((year % 4 == 0) && (year % 100) > 0) || (year % 400 == 0);
    } else {
        return false;
    }
}

fn main() {
  let args: Vec<String> = env::args().collect();
  if args.len() != 1 {
    println!("Usage: {} <noargs>", args[0]);
    process::exit(1);
  }
  for idx_i in 1999..2100 {
    println!("leap_year({})=<{}>", idx_i, leap_year(idx_i));
  }
}
