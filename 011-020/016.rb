arr = (2 ** 1000).to_s.split(//)
ans = 0
arr.each {|a|
	ans += a.to_i
}
puts "Answer: #{ans}"	# Answer: 1366
