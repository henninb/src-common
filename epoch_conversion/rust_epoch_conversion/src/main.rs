extern crate chrono;
use chrono::prelude::*;
use std::env;
use std::process;

fn compute_date_doy( utc: datetime::DateTime ) -> u32 {
    let n1 = 275 * utc.month() / 9;
    let n2 = (utc.month() + 9) / 12;
    let n3 = 1 + ((utc.year() - 4 * (utc.year() / 4) + 2) / 3);
    let n = n1 - (n2 * n3) + utc.day() - 30;

    return n;
}

fn datetime_to_epoch( utc: datetime::DateTime ) -> u32 {
    let mut idx = 1970;
    let mut total_days = 0;
    let mut total_secs = 0;

    while  idx < utc.year()  {
      total_days = total_days + compute_date_doy(idx, 12, 31);
      idx = idx + 1;
    }
    total_days = total_days + compute_date_doy(utc.year(), utc.month(), utc.day() - 1);
    let total_secs = (total_days * 86400) + (utc.hour() * 60 * 60) + (utc.minute() * 60) + utc.second();
    return total_secs;
}

fn main() {



  let args: Vec<String> = env::args().collect();
  if args.len() != 1 {
    println!("Usage: {} <noargs>", args[0]);
    process::exit(1);
  }
  println!("{}", datetime_to_epoch(year, month, day, hour, min, sec));
}
