# http://projecteuler.net/problem=62
#
#


def cubic_permutations(num)
	n = 0
	h = Hash.new
	h.default = 0
	min = Hash.new
	while true
		n += 1
		sum = 0
		c = n ** 3
		a = c.to_s.split(//).sort
		if h.has_key?(a) == false then
			h[a] = 1
			min[a] = c
		else
			h[a] += 1
			if h[a] == num then
				return min[a]
				break
			end
		end
	end
end



puts "Answer: #{cubic_permutations(5)}"		# Answer: 127035954683
