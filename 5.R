# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 
# without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

library(numbers)
mLCM(1:20)

# here, the native direct implementation looping over all positves to break first
# for (n in 1:prod(1:20)) { if ( all(n %% 1:20 == 0) ) break }
# isn't anyway performant in R
# but R has a library to find the lowest common multiple, what is searched here.