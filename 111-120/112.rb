# http://projecteuler.net/problem=112
#
#


def bouncy_numbers(r)
	r = r.to_f / 100
	n = 0
	a = 0
	rate = 0
	until rate > r or rate == r
		n += 1
    a += 1 if bouncy_number?(n) == true
		rate = a.to_f / n.to_f
		p rate
	end
	return n
end


def bouncy_number?(n)
	a = n.to_s.split(//)
	judge = {:increasing => true, :decreasing => true}
	a.each_index {|i| a[i] = a[i].to_i}
	a.each_index {|i|
		if i != 0 then
			if a[i] > a[i - 1] then
				judge[:decreasing] = false
			elsif a[i] < a[i - 1] then
				judge[:increasing] = false
			end
		end
    return true if judge[:increasing] == false and judge[:decreasing] == false
	}
	return false
end


puts "Answer: #{bouncy_numbers(99)}"	# Answer: 1587000
