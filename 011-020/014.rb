# http://projecteuler.net/problem=14
#
#


def longest_collatz_sequence(x)
	longest = 1
	ans = 0
	x.times {|i|
		c = collatz_sequence(i + 1)
		if c > longest then
			longest = c
			ans = i + 1
		end
	}
	return ans
end


def collatz_sequence(x)
	seq = 1
	n = x
	while 1 > 0
		case n % 2
		when 0
			n = n / 2
			seq += 1
		when 1
			n = 3 * n + 1
			seq += 1
		end
		if n == 1 then
			return seq
		end
	end
end


	puts "Answer: #{longest_collatz_sequence(999999)}"	# Answer: 837799
