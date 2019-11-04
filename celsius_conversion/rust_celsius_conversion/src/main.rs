//comment
use std::env;
use std::process;

fn to_fahrenheit ( x : f32 ) -> f32 {
  return  x * (9.0/5.0) + 32.0;
}

fn to_celsius ( x : f32 ) -> f32 {
  return (x - 32.0) * (5.0/9.0);
}

fn main() {
  let args: Vec<String> = env::args().collect();
  if args.len() != 1 {
    println!("Usage: {} <noargs>", args[0]);
    process::exit(1);
  }
  println!("toFahrenheit({})=<{}>", 21, to_fahrenheit(21.0));
  println!("toCelsius({})=<{}>", 70, to_celsius(70.0));
}
