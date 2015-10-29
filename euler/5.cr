# 2520 is the smallest number that can be divided by each
# of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly
# divisible by all of the numbers from 1 to 20?

class Infinite
  include Iterator(Int64)

  def initialize(@num=1)
  end

  def next
    @num += 1
  end
end


def divisible? divisible_list, num
  divisible_list.all? { |n| num % n == 0}
end

infinite = Infinite.new
div_list = (1..20).to_a

puts infinite.find{ |i| divisible?(div_list, i)}

# time crystal 5.cr
# real  0m10.567s

# time ./5
# real  0m2.422s

