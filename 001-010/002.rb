# http://projecteuler.net/problem=2
#
# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
#
#
def even_fibonacci_numbers(num)
		a = 1
		b = 2
		c = 0
		total = 2
		while c < 4000001
				c = a + b
				if c.even? then
						total += c
				end
				a = b
				b = c
		end
		return total
end




puts "Answer: #{even_fibonacci_numbers(4000000)}"	# Answer: 4613732
