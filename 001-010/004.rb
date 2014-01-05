# http://projecteuler.net/problem=4
#
#

def largest_palindrome_product
	a = 0
	for i in 100..999
		for j in 100..999
			n = i * j
			a = n if palindrome?(n) and n > a
		end
	end
	return a
end


def palindrome?(num)
	s = num.to_s.split(//)
	return true if s == s.reverse
	return false
end


	puts "Answer: #{largest_palindrome_product}"	# Answer: 906609
