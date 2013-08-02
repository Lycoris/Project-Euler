# http://projecteuler.net/problem=65
#
#

def Convergents_of_e()
	a = Array.new
	for i in 1..33
	33.times {|i|
		a.push 1, 2 * (i + 1), 1
	}
	a = a.reverse
	n = 0
	for i in 1..a.size
	a.size.times {|i|
		n += a[i]
		n = Rational(1, n)
	}
	n += 2
	r = Rational(n).numerator
	r = r.to_s.split(//)
	answer = 0
	for i in 1..r.size
	r.size.times {|i|
		answer += r[i].to_i
	}
	return answer
end

puts "Answer: #{Convergents_of_e()}"	# Answer: 272
