# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

def least_prime(num : Int64)
  prime = 2

  while num % prime != 0
    prime += 1
  end

  prime
end

def largest_prime_factor(num : Int64)
  factors = [] of Int32

  while num > 1
    lp = least_prime(num)
    factors << lp
    num = num / lp
  end

  return factors[-1]
end

puts largest_prime_factor(600_851_475_143)

# non-build
# real  0m0.255s

# build
# real  0m0.006s