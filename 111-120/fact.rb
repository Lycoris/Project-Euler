
def fact(n)
	f = 1
	n.downto(2) {|i| f *= i}
	return f
end
