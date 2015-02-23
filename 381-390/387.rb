# http://projecteuler.net/problem=387
#
#

require 'prime'


def harshad_numbers(l)
  rth = []
  0.upto(l - 2) {|d|
    a = []
    if d == 0
      a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
      rth << a
      next
    end
    rth[d - 1].each {|h|
      0.upto(9) {|i|
        a << 10 * h + i if (10 * h + i) % digit_sum(10 * h + i) == 0
      }
    }
    rth << a
  }
  srth = []
  rth.flatten.each {|h|
    srth << h if (h / digit_sum(h)).prime?
  }
  srthp = 0
  srth.each {|h|
    0.upto(9) {|i|
      srthp += 10 * h + i if (10 * h + i).prime?
    }
  }
  return srthp
end


def digit_sum(n)
  return 0 if n == 0
  ans = 0
  d = Math.log10(n).to_i
  return n if d == 0
  ans += n / 10 ** d
  n -= (n / 10 ** d) * (10 ** d)
  ans += digit_sum(n)
  return ans
end

puts "Answer: #{harshad_numbers(14)}"   # Answer: 696067597313468
