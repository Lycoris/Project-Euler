# http://projecteuler.net/problem=4
#
#

def largest_palindrome_product
	a = 0
	for i in 100..999
		for j in 100..999
			n = i * j
			if palindrome?(n) == true and n > a then
				a = n
			end
		end
	end
	return a
end


def palindrome?(num)
	s = num.to_s.split(//)
	if s == s.reverse then
		return true
	else
		return false
	end
end


	puts "Answer: #{largest_palindrome_product}"	# Answer: 906609
