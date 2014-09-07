
def fact(n)
	return 1 if n == 0
	f = 1
	n.downto(2) {|i| f *= i}
	return f
end
