# http://projecteuler.net/problem=40
#
#

def champernowne_constant
	str = ""
	200000.times {|i|
		str << (i + 1).to_s
		p i + 1
	}
	arr = str.split(//)
	arr.each_index {|i|
		arr[i] = arr[i].to_i
	}
	return arr[0] * arr[9] * arr[99] * arr[999] * arr[9999] * arr[99999] * arr[999999]
end


	puts "Answer: #{champernowne_constant()}"	# Answer: 210
