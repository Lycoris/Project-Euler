# http://projecteuler.net/problem=11
#
#


def largest_product_in_grid(filename)
  g = Array.new
  open(filename) {|f| f.each {|line| g << line.chomp!.split(" ")}}
  g.map!{|i| i.map!{|item| item.to_i}}
  m = 0
  0.upto(16) {|i|
    0.upto(19){|j|
      m = g[i][j] * g[i + 1][j] * g[i + 2][j] * g[i + 3][j] if g[i][j] * g[i + 1][j] * g[i + 2][j] * g[i + 3][j] > m
    }
  }
  0.upto(19) {|i|
    0.upto(16){|j|
      m = g[i][j] * g[i][j + 1] * g[i][j + 2] * g[i][j + 3] if g[i][j] * g[i][j + 1] * g[i][j + 2] * g[i][j + 3] > m
    }
  }
  3.upto(19) {|i|
    0.upto(16) {|j|
      m = g[i][j] * g[i - 1][j + 1] * g[i - 2][j + 2] * g[i - 3][j + 3] if g[i][j] * g[i - 1][j + 1] * g[i - 2][j + 2] * g[i - 3][j + 3] > m
    }
  }
  3.upto(19) {|i|
    3.upto(19) {|j|
      m = g[i][j] * g[i - 1][j - 1] * g[i - 2][j - 2] * g[i - 3][j - 3] if g[i][j] * g[i - 1][j - 1] * g[i - 2][j - 2] * g[i - 3][j - 3] > m
    }
  }
  return m
end


puts "Answer: #{largest_product_in_grid("011.txt")}"  # Answer: 70600674
