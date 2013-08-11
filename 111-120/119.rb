# http://projecteuler.net/problem=119
#
#

def a(n)
	ans = 0
	powers
	@arr.each_index {|i|
		k = @arr[i]
		if Math.log10(k) - Math.log10(k).floor == 0 then
			next
		end
		ds = digit_sum(k)
		while 1 > 0
			if k % ds == 0 then
				k /= ds
				if k == 1 then
					ans += 1
					p @arr[i]
					if ans == n then
						return @arr[i]
					end
					break
				end
			else
				break
			end
		end
	}
	return ans
end




def powers
	@arr = []
	for a in 2..100
		for b in 2..100
			@arr << a ** b
		end
	end
	@arr.delete_if {|x|
		x < 10
	}
	@arr = @arr.uniq.sort
end


def digit_sum(n)
	n = n.to_s.split(//)
	a = 0
	n.each {|d| a += d.to_i}
	return a
end


	puts "Answer: #{a(30)}"	# Answer: 248155780267521
