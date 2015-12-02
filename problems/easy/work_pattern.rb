# @param {String} pattern
# @param {String} str
# @return {Boolean}
def word_pattern(pattern, str)
  if pattern and str
    pattern_maps = {}
    index = 0
    str_array = str.split " "
    if pattern.length != str_array.size
      return false
    end
    pattern.each_char { |p|
      if pattern_maps.has_value? str_array[ index ] and pattern_maps[ p ] != str_array[ index ]
        return false
      end
      if pattern_maps.has_key? p
        if str_array[ index ] != pattern_maps[ p ]
          return false
        end
      else
        pattern_maps[ p ] = str_array[ index ]
      end
      index += 1
    }
    return true
  else
    false
  end
end
