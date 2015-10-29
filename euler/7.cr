# By listing the first six prime numbers:
# 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?

class Primes
  def initialize(@nth_prime)
    @last_prime = 2
    max = upper_bounds
    @sequence = (2..max).to_a
    find_primes
  end

  def sequence
    @sequence
  end

  def upper_bounds
    (@nth_prime * (Math.log(@nth_prime) + Math.log(Math.log(@nth_prime)))).floor
  end

  def self.prime? n
    (2..n/2).any?{|i| n % i == 0} ? false : true
  end

  def self.find(nth_prime)
    new(nth_prime).sequence[nth_prime]
  end

  private def find_primes
    while @last_prime != 0
      @sequence.reject! do |i|
        i % @last_prime == 0 && i != @last_prime
      end

      @last_prime = @sequence.find(0){|i| i > @last_prime }
    end
  end
end

puts Primes.find(10_000)

# build
# real  0m0.608s