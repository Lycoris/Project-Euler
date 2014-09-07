# http://qiita.com/little_Schemer/items/d88c80dbe2f64b86155a
#
#


def prime_list(n)
    return [] if n < 2
      return [2] if n == 2
    
      limit = (n ** 0.5).to_i
      arr = (1 .. n).step(2).to_a
      arr[0] = 2
      len = arr.size
    
      i = 0
      while true
        i = i + 1
        j = arr[i]
        next unless j
        break if j > limit
        k = 2 * i * (i + 1)
        while k < len
          arr[k] = nil
          k = k + j
        end
      end
      arr.compact!
      return arr
end
