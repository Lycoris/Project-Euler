# http://projecteuler.net/problem=30
# 
#


def digit_powers(n)
	ans = 0
	for i in 2..10 ** (n + 1)
		arr = i.to_s.split(//)
		a = 0
		arr.each {|d|
			a += d.to_i ** n
		}
		if a == i then
			ans += i
		end
	end
	return ans
end


	puts "Answer: #{digit_powers(5)}"	# Answer: 443839
