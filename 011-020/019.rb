# http://projecteuler.net/problem=19
#
#

require 'date'

def counting_sundays
	a = 0
	i = Date.new(1900, 12, 1)
	1200.times {|k|
		i = i >> 1
		if i.sunday? == true then
			a += 1
		end
	}
	return a
end


puts "Answer: #{counting_sundays}"
