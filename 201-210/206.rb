# http://projecteuler.net/problem=206
#
#

def concealed_square
  n = 138902663
  while search(n ** 2) == false
    n -= 1
  end  
  return 10 * n
end

def search(n)
  s = n.to_s
  for i in 0..8
    return false if s[2 * i].to_i != i + 1
    return true if i == 8
  end
end


puts "Answer: #{concealed_square}"	# Answer: 1389019170
