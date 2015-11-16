# http://fisherlei.blogspot.com/2012/12/leetcode-roman-to-integer.html

# @param {String} s
# @return {Integer}
def roman_to_int(s)
  roman_to_int_hash = {}
  roman_to_int_hash[ "I" ] = 1
  roman_to_int_hash[ "V" ] = 5
  roman_to_int_hash[ "X" ] = 10
  roman_to_int_hash[ "L" ] = 50
  roman_to_int_hash[ "C" ] = 100
  roman_to_int_hash[ "D" ] = 500
  roman_to_int_hash[ "M" ] = 1000

  final_value = 0
  (0...s.size).each { |i|
    if i > 0 and roman_to_int_hash[ s[ i ] ] > roman_to_int_hash[ s[ i - 1 ] ]
      final_value += roman_to_int_hash[ s[ i ] ] - 2 * roman_to_int_hash[ s[ i - 1 ] ]
    else
      final_value += roman_to_int_hash[ s[ i ] ]
    end
  }
  final_value
end
