# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  transform( s ) == transform( t )
end

def transform( s )
  result = {}
  s.chars.each { |c|
    if result.has_key? c
      result[ c ] += 1
    else
      result[ c ] = 1
    end
  }
  result
end
