require 'set'

# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  if board
    (0..8).each { |i|
      if ! is_valid_cube board, i, i, 0, 8
        return false
      end
    }
    (0..8).each { |j|
      if ! is_valid_cube board, 0, 8, j, j
        return false
      end
    }
    (0..2).each { |i|
      (0..2).each { |j|
        if ! is_valid_cube board, 3 * i, 3 * i + 2, 3 * j, 3 * j + 2
          return false
        end
      }
    }
    return true
  end
  return false
end

def is_valid_cube( board, i0, i1, j0, j1 )
  temp_set = Set.new
  (i0..i1).each { |i|
    (j0..j1).each { |j|
        tile = board[ i ][ j ]
        if tile == '.'
          next
        else
          num = tile.to_i
          if temp_set.include? num
            return false
          else
            temp_set.add num
          end
        end
    }
  }
  true
end
