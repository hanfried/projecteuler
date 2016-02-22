# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

say sum unique flat (3,6...^1000), (5,10...^1000)

# or

say sum (1...^1000).grep( { $_ %% (3|5) })


# I really like the first version, as it is pretty cool to express it so naturally
# of course, version 2 is very impressive due to shortness
# and builtin possibilities
# %% is dividible what is so much nicer than $_ % 3 == 0
# and 3|5 is a junction (that would be run in parallel super quantum mode)
# in both versions the ...^ notion means a list to below this threshold
