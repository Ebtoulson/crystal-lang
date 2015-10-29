# A palindromic number reads the same both ways.
# The largest palindrome made from the product of
# two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

def palindrome?(num : Int32)
  str = num.to_s
  str == str.reverse
end

def largest_palindrome(digits : Int32)
  min = (10 ** (digits - 1)).to_i
  max = (10 ** digits).to_i
  range = (min...max).to_a

  all = range.flat_map{ |i| range.map(&.* i)}
  all.select{ |i| palindrome?(i) }.max
end

puts largest_palindrome(3)