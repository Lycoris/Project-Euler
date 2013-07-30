# http://projecteuler.net/problem=76
#
#


def counting_summations(num)
	ans = 0
	for i in 2..num
		ans += p(num, i)
	end
	return ans
end


def p(n, r)
	if n < r then
		return 0
	elsif n == r or r == 1 then
		return 1
	else
		return p(n - r, r) + p(n - 1, r - 1)
	end
end


	puts "Answer: #{counting_summations(100)}"		# Answer: 190569291
