# http://projecteuler.net/problem=1
#
#


def sum_until(num)
	total = 0
	num.times {|n| total += n + 1 if (n + 1).modulo(3) == 0 or (n + 1).modulo(5) == 0}
	return total
end

puts "Answer: #{sum_until(999)}"	#Answer: 233168
