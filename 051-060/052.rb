# http://projecteuler.net/problem=52
#
#


def permuted_multiples
	n = 1
	while true
			n += 1
			(10 ** (n - 1)).upto((10 ** n) / 6) {|x|
					a = x.to_s.split(//).sort
					2.upto(6) {|i|
							break if (i * x).to_s.split(//).sort != a
							return x if i == 6
					}
			}
	end
end


puts "Answer: #{permuted_multiples}"	# Answer: 142857
