# If we list all the natural numbers below 10 that
# are multiples of 3 or 5, we get 3, 5, 6 and 9.
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def find_multiples(max : Int32)
  (1...max).select{ |n| (n % 3 == 0) || (n % 5 == 0)}
end

puts find_multiples(max=1000).sum()


# time crystal 1.cr
# real 0m0.268s

# crystal build 1.cr --release
# time ./1
# real  0m0.006s