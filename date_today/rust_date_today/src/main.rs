//comment
extern crate chrono;
use chrono::prelude::*;
use std::env;
use std::process;

fn date_today() {
  let local: DateTime<Local> = Local::now();
  let year = local.year();
  let month = local.month();
  let day = local.day();
  let hour = local.hour();
  let min = local.minute();
  let sec = local.second();
  println!("{}", local.format("%Y-%m-%d %H:%M:%S"));
  println!("local=<{}-{}-{} {}:{}:{}>", year, month, day, hour, min, sec);
}

fn date_utc() {
  let utc: DateTime<Utc> = Utc::now();
  let year = utc.year();
  let month = utc.month();
  let day = utc.day();
  let hour = utc.hour();
  let min = utc.minute();
  let sec = utc.second();
  println!("{}", utc.format("%Y-%m-%d %H:%M:%S"));
  println!("utc=<{}-{}-{} {}:{}:{}>", year, month, day, hour, min, sec);
}

fn main() {
  let args: Vec<String> = env::args().collect();

  if args.len() != 1 {
    println!("Usage: {} <noargs>", args[0]);
    process::exit(1);
  }
  date_today();
  date_utc();
}
