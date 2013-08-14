# http://projecteuler.net/problem=124
#
#

require 'prime'

def e(n, limit)
	k = Hash.new
	limit.times {|i|
		if k[rad(i + 1)] == nil then
			k[rad(i + 1)] = []
		end
		k[rad(i + 1)] << i + 1
		p i + 1
	}
	sum = 0
	i = 0
	until sum > n or sum == n
		i += 1
		if k[i] != nil then
			sum += k[i].size
		end
	end
	return k[i][-((sum - n) + 1)]
end


def rad(n)
	r = 1
	n.prime_division.each {|i| r *= i[0]}
	return r
end


	puts "Answer: #{e(10000,100000)}"	# Answer: 21417
