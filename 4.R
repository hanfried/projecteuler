# A palindromic number reads the same both ways. 
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

library(stringi)
is.palindrome <- function(s) {s == stri_reverse(s)}
products <- as.vector( 100:999 %*% t(100:999) )
max(products[is.palindrome(products)])

# This was surprisingly difficult to express directly.
# R doesn't have simple string reverse function by base system,
# the R cookbook would make it via strsplit + rev + pasting it back again,
# but I think this really hides what I intent.
# I'm probably not the only one, as there are several packages,
# e.g. Biostrings, that implement a reverse function,
# but for what reason should I load a bio genome package here,
# that would be suprising too for any reader.
# Even the most famous stringr package has everything to work with string but not a reverse function

# Obviously, calculating the cross products isn't the most efficient way,
# that might be probably looping over both multiplicants beginning with the biggest numbers
# and searching for the first big solution,
# but this solution pretty much expresses directly what is in the problem description.