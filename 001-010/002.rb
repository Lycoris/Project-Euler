# http://projecteuler.net/problem=2
#
#

require '../lib/fib'


def even_fibonacci_numbers(l)
  n = 3
  ans = 0
  until fib(n) > l
    ans += fib(n)
    n += 3
  end
  return ans
end

puts "Answer: #{even_fibonacci_numbers(4000000)}"	# Answer: 4613732
