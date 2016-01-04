# @param {Integer} n
# @return {Integer}
# def bulb_switch(n)
#   if n < 1
#     return 0
#   end
#   bulbs = [ 0 ] * n
#   ( 1..n ).each { |x| 
#     bulbs.each_index { |i|
#       if i + 1 >= x and ( i + 1 ) % x == 0
#         bulbs[ i ] = 1 - bulbs[ i ]
#       end
#     }
#   }
#   return bulbs.count( 1 )
# end

def bulb_switch(n)
  if n < 1
    return 0
  end
  return Math.sqrt( n ).to_i()
end
