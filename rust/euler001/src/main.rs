/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
 * we get 3, 5, 6 and 9. The sum of these multiples is 23.
 *
 * Find the sum of all the multiples of 3 or 5 below 1000.
 */

extern crate clap;
use clap::App;

fn main() {
    let matches = App::new("projecteuler-rust-001")
        .args_from_usage(
            "-n=[N]"
        )
        .get_matches();
    let n = matches.value_of("n")
        .unwrap_or("1000")
        .to_string()
        .parse::<f64>()
        .unwrap() as u64;
    let mut s = 0;
    for n in 0..n {
        if n % 3 == 0 || n % 5 == 0 {
            s += n;
        }
    }
    println!(
        "Sum of all multiples of 3 and 5 till n={} is {}", n, s
    );
}
