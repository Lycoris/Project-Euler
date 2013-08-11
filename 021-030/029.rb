# http://projecteuler.net/problem=29
#
#


def distinct_powers(x, y)
	arr = Array.new
	for a in 2..x
		for b in 2..y
			arr << a ** b
		end
	end
	arr = arr.uniq
	return arr.size
end


	puts "Answer: #{distinct_powers(100, 100)}"		# Answer: 9183
