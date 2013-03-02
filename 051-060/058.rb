# http://projecteuler.net/problem=58
#
#
#
require 'prime'

def spiral_primes(num)
	a = 1
	n = 1
	p = 0
	while true
		n += 2
		a += (n - 1)
		if a.prime? then
			p += 1
		end
		a += (n - 1)
		if a.prime? then
			p += 1
		end
		a += (n - 1)
		if a.prime? then
			p += 1
		end
		a += (n - 1)
		if a.prime? then
			p += 1
		end
	rate = p.fdiv(2 * n - 1)
	puts rate
	if rate < num.fdiv(100) then
		return n
		break
	end
	end
end


puts "Answer:#{spiral_primes(10)}"	# Answer:26241
