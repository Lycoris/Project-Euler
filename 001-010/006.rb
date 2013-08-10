# http://projecteuler.net/problem=6
#
#

def sum_square_difference(x)
	a, b = 0, 0
	x.times {|i|
		a += (i + 1) ** 2
		b += (i + 1)
	}
	b = b ** 2
	return b - a
end


	puts "Answer: #{sum_square_difference(100)}"	# Answer: 25164150
