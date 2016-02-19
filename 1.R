# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

nr <- 1:999
sum( which(nr %% 3 == 0 | nr %% 5 == 0) )


# Very straight forward to a reader

# Disadvantage: It relies that R indices vectors starting from 1,
# so nr[1] == 1, nr[2] == 2, ... here in this case
# without it, 
# The alternative would be to sum about the values:
# sum( nr[nr %% 3 == 0 | nr %% 5 == 0] )
# what is even shorter, but IMO harder to read and 3 times repeating nr

# I personal hate this repetition,
# I'd love to write it as (pseudocode):
# sum( nr: . %% 3 == 0 | . %% 5 == 0 )