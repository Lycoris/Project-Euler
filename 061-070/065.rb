# http://projecteuler.net/problem=65
#
#

def Convergents_of_e()
	a = Array.new
	for i in 1..33
		a.push 1, 2 * i, 1
	end
	a = a.reverse
	n = 0
	for i in 1..a.size
		n += a[i - 1]
		n = Rational(1, n)
	end
	n += 2
	r = Rational(n).numerator
	r = r.to_s.split(//)
	answer = 0
	for i in 1..r.size
		answer += r[i - 1].to_i
	end
	return answer
end

puts "Answer: #{Convergents_of_e()}"	# Answer: 272
