/* If we list all the natural numbers below 10 that are multiples of 3 or 5, 
 * we get 3, 5, 6 and 9. The sum of these multiples is 23.
 *
 * Find the sum of all the multiples of 3 or 5 below 1000.
 */

extern crate clap;
extern crate regex;
use clap::App;
use regex::Regex;

fn sum_of_multiples(n: u64, multiples: &Vec<u64>) -> u64 {
    let mut sum = 0;
    for i in 0..n {
        'multiples: for m in multiples {
            if i % m == 0 {
                sum += i;
                break 'multiples;
            }
        }
    }
    sum
}

fn main() {
    let matches = App::new("projecteuler-rust-001")
        .args_from_usage(
            "-n=[N]                      'defaults to 1000
             -m, --multiples=[MULTIPLES] 'defaults to 3,5"
        )
        .get_matches();
    let n = matches.value_of("n")
        .unwrap_or("1000")
        .to_string()
        .parse::<f64>()
        .unwrap() as u64;
    let non_digit_re = Regex::new(r"\D+").unwrap();
    let multiples = matches.value_of("multiples").unwrap_or("3,5");
    let multiples: Vec<u64> = non_digit_re
        .split(multiples)
        .map(|s| s.parse::<u64>().unwrap())
        .collect();
    println!(
        "Sum of all multiples of {:?} till n={} is {}",
        multiples,
        n,
        sum_of_multiples(n, &multiples)
    );
}
