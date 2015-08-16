# http://projecteuler.net/problem=10
#
#


require 'prime'

puts "Answer: #{Prime.each(2000000).inject(:+)}"		# Answer: 142913828922
