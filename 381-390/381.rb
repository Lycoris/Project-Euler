# http://projecteuler.net/problem=381
#
#

require 'prime'


def s(p)
  ans = 0
  Prime.each(10 ** p) {|pr|
    next if pr == 2 or pr == 3
    m = 3
    until m % 8 == 0
      m += pr
    end
    ans += (m / -8) % pr
  }
  return ans
end

  puts "Answer: #{s(8)}"   # Answer: 139602943319822
