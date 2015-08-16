# http://projecteuler.net/problem=20
#
#

require '../lib/fact'


puts "Answer: #{fact(100).to_s.split(//).map(&:to_i).inject(:+)}"	# Answer: 648
