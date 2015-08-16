# http://projecteuler.net/problem=25
#
#

require '../lib/fib'

def fibonacci_sequence_digit(x)
	n = 2
	while 1 > 0
		n += 1
    return n if Math.log10(fib(n)).floor == x - 1
	end
end


puts "Answer: #{fibonacci_sequence_digit(1000)}"  # Answer: 4782
