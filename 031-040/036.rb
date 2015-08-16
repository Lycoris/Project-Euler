# http://projecteuler.net/problem=36
#
#

def palindrome(n)
	answer = 0
	(n - 1).times {|i| answer += i + 1 if is_rev(i + 1) == true and is_rev((i + 1).to_s(2)) == true }
	return answer
end



def is_rev(n)
	a = n.to_s.split(//)
	return true if a == a.reverse
	return false
end


puts "Answer: #{palindrome(1000000)}"	# Answer: 872187
