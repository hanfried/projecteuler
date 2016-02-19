# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a² + b² = c²
# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

pythogorean_triple <- function(sum) {
  for (a in 1:sum) {
    for (b in (a+1):sum) {
      c <- sum - a - b
      if (a^2 + b^2 == c^2) {return(c(a,b,c))}
    }
  }
}
prod(pythogorean_triple(1000))

# Here, it was very tempting to use the pythagorean_triples function from package numbers.
# But it is nasty, as this function returns _only_ primitive pythagorean triples
# so I'll have to make own calculations of multiples to find the solution,
# it es even longer and much more far away from the problem description
# and not really self explanationary, look at the snippet below as an example
#
#
#   library(numbers)
#   primitive_pt <- pythagorean_triples(1,1000)   
#   pt_sum <- pt[,3] + pt[,4] + pt[,5]             
#   abc_primitive <- primitive_pt[1000 %% pt_sum == 0,3:5]
#   abc <- (1000 / sum(abc_primitive)) * abc_primitive
#   prod(abc)
#   
# Also, if I wanted to make my own calcs, I could start directly with number theory approach,
# what is fine indeed, but not a programming task any longer
# the programming taks is too explain WHAT I want, not how