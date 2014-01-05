# http://projecteuler.net/problem=2
#
#


def even_fibonacci_numbers(num)
		a = 1
		b = 2
		c = 0
		total = 2
		while c < 4000001
				c = a + b
				total += c if c.even?
				a = b
				b = c
		end
		return total
end


puts "Answer: #{even_fibonacci_numbers(4000000)}"	# Answer: 4613732

