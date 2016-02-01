# @param {String[]} words
# @return {Integer}
def max_product(words)
  max_product = 0
  word_bit_arrays = []
  words.each { |word|
    word_bit_arrays.push( word_bit_array( word ) )
  }
  word_bit_arrays.each_with_index { |word_bit_array, index|
    (index + 1..words.size - 1).each { |num| 
      word_size = words[ index ].size
      product = product_of_two_words word_bit_array, word_size, word_bit_arrays[ num ], words[ num ].size
      if product > max_product
        max_product = product
      end
    }
  }
  max_product
end

def word_bit_array word
  word_bit_array = 0x0
  word.each_char { |ch|
    word_bit_array = word_bit_array | ( 0x1 << ( ch.ord - 'a'.ord ) )
  }
  return word_bit_array
end

def product_of_two_words( word_a_bit_array, word_a_size, word_b_bit_array, word_b_size )
  if word_a_bit_array & word_b_bit_array != 0
    return 0
  end
  return word_a_size * word_b_size
end

puts max_product ["abcw","baz","foo","bar","xtfn","abcdef"]
