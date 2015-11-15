# @param {Integer} n
# @return {Integer}
# def num_trees(n)
#   result_array = [ 0 ] * ( n + 1 )
#   result_array[ 0 ] = 1
#   result_array[ 1 ] = 1
#   result_array = helper n, result_array
#   result_array[ n ]
# end
# 
# def helper( n, helper_array )
#   if n == 0 or n == 1
#     helper_array
#   end
#   if helper_array[ n ] == 0
#     result = 0
#     # Choose as root
#     (1..n).each { |x| 
#       helper_array = helper x - 1, helper_array
#       helper_array = helper n - x, helper_array
#       left_result = helper_array[ x - 1 ]
#       right_result = helper_array[ n - x ]
#       result += left_result * right_result
#     }
#     helper_array[ n ] = result
#   end
#   helper_array
# end

def num_trees(n)
  result_array = [ 0 ] * ( n + 1 )
  result_array[ 0 ] = 1
  result_array[ 1 ] = 1
  (2..n).each { |i|
    result = 0
    (1..i).each { |j|
      result += result_array[ j - 1 ] * result_array[ i - j ]
    }
    result_array[ i ] = result
  }
  result_array[ n ]
end
