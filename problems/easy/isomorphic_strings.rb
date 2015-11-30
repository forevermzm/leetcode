# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
  if s and t and s.size == t.size
    char_maps = {}
    index = 0
    s.each_char { |ch|
      if char_maps.has_value? t[ index ]
        if char_maps[ ch ] == t[ index ]
          index += 1
          next
        else
          return false
        end
      end
      if char_maps.has_key? ch
        if char_maps[ ch ] == t[ index ]
          index += 1
          next
        else
          return false
        end
      else
        char_maps[ ch ] = t[ index ]
        index += 1
      end
    }
    return true
  else
    return false
  end
end
