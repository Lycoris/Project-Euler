
require 'prime'


def coprime?(m, n)
	a = Prime.prime_division(m)
	b = Prime.prime_division(n)
	a = Hash[*a.flatten]
	b = Hash[*b.flatten]
	a.each_key {|k|
		if b[k] != nil then
			return false
		end
	}
	return true
end
