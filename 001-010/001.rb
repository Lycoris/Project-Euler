# http://projecteuler.net/problem=1
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

def sum_until(num)
	total = 0
	num.times {|n|
		if (n + 1).modulo(3) == 0 or (n + 1).modulo(5) == 0 then
			total += n + 1
		end
	}
	return total
end

puts "Answer: #{sum_until(999)}"	#Answer: 233168
