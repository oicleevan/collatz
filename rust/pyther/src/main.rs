use std::env;

fn collatz(mut x: usize) -> Vec<usize> {
    let mut list: Vec<usize> = vec![x];
    while x > 1 {
       match x % 2 {
           1 => x = (x * 3) + 1,
           _ => x = x / 2
       };
       list.push(x);
    }
    list
}

fn main() {
    let args: Vec<String> = env::args().collect();
    match args[1].parse() {
        Ok(x) => println!("{:?}", collatz(x)),
        Err(_) => println!("Please pass the number as an argument."),
    }
}

