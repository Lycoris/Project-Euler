# http://projecteuler.net/problem=25
#
#


def fibonacci_sequence_digit(x)
	@fibonacci_sequence = {1 => 1, 2 => 1}
	n = 2
	while 1 > 0
		n += 1
		if Math.log10(fibonacci(n)).floor == x - 1 then
			return n
		end
	end
end


def fibonacci(n)
	@fibonacci_sequence[n] = @fibonacci_sequence[n - 1] + @fibonacci_sequence[n - 2]
	return @fibonacci_sequence[n]
end


	puts "Answer: #{fibonacci_sequence_digit(1000)}"
