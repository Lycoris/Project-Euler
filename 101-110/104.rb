# http://projecteuler.net/problem=104
#
#

require '../lib/fib'

def pfib
  n = 0
  while true
    n += 1
    if fib9(n) % 9 == 0 && fib9(n).to_s.split(//).sort.join == "123456789" then
      arr = fib(n).to_s.split(//)
      return n if arr[0..8].sort.join == "123456789"
    end
  end  
end


def fib9(k)
  @m ||= []
  @m[k] ||= k <= 1 ? k : (fib9(k - 2) + fib9(k - 1)) % (10 ** 9)
  return @m[k]
end


  puts "Answer: #{pfib}"  # Answer: 329468
