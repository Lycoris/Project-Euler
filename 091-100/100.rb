# http://projecteuler.net/problem=100
#
#


def arranged_probability
  x, y = 1, 1
  while true
    x, y = 3 * x + 4 * y, 2 * x + 3 * y
    return (y + 1) / 2 if (x + 1) / 2 > 10 ** 12
  end
end


  puts "Answer: #{arranged_probability}"  # Answer: 756872327473
