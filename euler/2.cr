# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

class Fibonacci
  include Iterator(Int32)

  def initialize
    @seq = [] of Int32
    @step = 0
  end

  def next
    @step += 1

    if @step == 1
      @seq << 0 << 1
    elsif @step == 2
      @seq << 2
      return 2
    end

    sum = take_last(2).sum().tap do |s|
      @seq << s
    end
  end

  private def take_last(n)
    @seq[-n..-1]
  end
end

fib = Fibonacci.new
puts fib.take_while(&.< 4_000_000).select(&.even?).sum()

# time crystal 2.cr
# real  0m0.264s

# crystal build 2.cr --release
# time ./2
# real  0m0.005s
