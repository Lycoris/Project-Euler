# http://projecteuler.net/problem=346
#
#


def sum_sr(l)
  a = [1]
  i = 2
  until i + 1 + i ** 2 > l - 1
    b = 1 + i + i ** 2
    j = 3
    until b > l - 1
      a << b
      b += i ** j
      j += 1
    end
    i += 1
  end
  ans = 0
  a.uniq!.each {|sr| ans += sr}
  return ans
end


puts "Answer: #{sum_sr(1000000000000)}"   # Answer: 336108797689259276
