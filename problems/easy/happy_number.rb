# @param {Integer} n
# @return {Boolean}

require 'set'

def is_happy(n)
  if n <= 0
    return false
  end
  looped_numbers = Set.new
  while n != 1 and ! looped_numbers.include? n
    looped_numbers.add n
    n = new_number n
  end
  if n == 1
    return true
  else
    return false
  end
end

def new_number n
  n_str = n.to_s
  result = 0
  n_str.each_char { |ch|
    result += ch.to_i * ch.to_i
  }
  result
end
