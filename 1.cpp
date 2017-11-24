#include <algorithm> // for copy
#include <iostream>
#include <iterator> // for ostream_iterator
#include <numeric>
#include <vector>

/* If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
 *
 * Find the sum of all the multiples of 3 or 5 below 1000.
 */
int main() {
    std::vector<int> numbers (999);
    std::vector<int> filtered_numbers (numbers.size());
    std::iota(numbers.begin(), numbers.end(), 1);
    auto it = std::copy_if(
        numbers.begin(), 
        numbers.end(), 
        filtered_numbers.begin(), 
        [](int i){return (i % 3 == 0) || (i % 5 == 0);} 
    );
    filtered_numbers.resize(std::distance(filtered_numbers.begin(),it));
      
    for (auto n : filtered_numbers)
        std::cout << n << ' ';

    auto sum = std::accumulate(filtered_numbers.begin(), filtered_numbers.end(), 0);
    std::cout << "\n" << "Sum=" << sum << "\n"; 
}
