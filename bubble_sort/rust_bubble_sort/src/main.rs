
use std::env;

fn main() {
    let args: Vec<String> = env::args().collect();
    println!("{:?}", args);
    print_number(5);
}

fn print_number(x: i32) {
    println!("x is: {}", x);
}

fn bubble_sort<T: std::clone::Clone, F>(vec_to_sort: &Vec<T>, compar : F) -> Vec<T>
where F : Fn(&T,&T) -> bool {
    let mut result = vec_to_sort.clone();
    for i in 0..result.len() {
        for y in 0..result.len() {
            if compar(&result[i], &result[y]) {
                result.swap(i, y);
            }
        }
    }
    return result;
}

fn bubble_sort1(vec_to_sort: &Vec<i32>) -> Vec<i32> {
    let result = vec_to_sort.clone();
    for i in 0..result.len() {
        for y in 0..result.len() {
            if result[i] < result[y] {
            }
        }
    }
    return result;
}

fn bubble_sort2(vec_to_sort: &Vec<i32>) -> Vec<i32> {
    let mut result = vec_to_sort.clone();
    for i in 0..result.len() {
        for y in 0..result.len() {
            if result[i] < result[y] {
                result.swap(i, y);
            }
        }
    }
    return result;
}
