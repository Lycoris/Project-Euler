# http://projecteuler.net/problem=124
#
#

require 'prime'

def e(n, limit)
	k = Hash.new
	limit.times {|i|
    k[rad(i + 1)] = [] if k[rad(i + 1)] == nil
		k[rad(i + 1)] << i + 1
	}
	sum = 0
	i = 0
	until sum > n or sum == n
		i += 1
    sum += k[i].size if k[i] != nil
	end
	return k[i][-((sum - n) + 1)]
end


def rad(n)
	r = 1
	n.prime_division.each {|i| r *= i[0]}
	return r
end


puts "Answer: #{e(10000,100000)}"	# Answer: 21417
