# @param {Integer} n
# @return {Integer}
def num_squares(n)
  if n < 0
    return 0
  end
  while n % 4 == 0
    n = n / 4
  end
  if n % 8 == 7
    return 4
  end
  min_way = 3
  (1..Math.sqrt( n + 1 ).to_i).each { |num|
    if num * num == n
      min_way = 1
    else
      b = Math.sqrt( n - num * num ).to_i
      if num * num + b * b == n
        min_way = 2
      end
    end
  }
  min_way
end

# @param {Integer} n
# @return {Integer}
def num_squares(n)
    if n < 0
        return 0
    elsif n == 1
        return 1
    else
        while n % 4 == 0 
            n = n / 4
        end
        if n % 8 == 7
            return 4
        end
        squares = squares n
        solutions = [ 0 ] * ( n + 1 )
        solutions[ 1 ] = 1
        (2..n).each { |num|
            t_num = num
            while t_num % 4 == 0 
                t_num = t_num / 4
            end
            if t_num % 8 == 7
                solutions[ num ] = 4
                next
            end
            min_way = 5
            squares.each { |square|
                if square > t_num
                    break
                elsif square == t_num
                    min_way = 1
                else
                    way = solutions[ t_num - square ] + 1
                    if way < min_way
                        min_way = way
                    end
                end
            }
            solutions[ num ] = min_way
        }
        solutions[ n ]
    end
end

def squares n
    i = 1
    squares = []
    while true
        if i * i > n
            break
        else
            squares.push i * i
            i = i + 1
        end
    end
    squares
end
