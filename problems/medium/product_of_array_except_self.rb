# http://bookshadow.com/weblog/2015/07/16/leetcode-product-array-except-self/
# For a number i, the result should be all values multiplied from left, and all 
# values multiplied from the right.

# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
    result = [1] * nums.size
    left = 1
    nums.each_with_index { |num, index|
      result[ index ] = result[ index ] * left
      left = left * num
    }
    right = 1
    nums.reverse.each_with_index { |num, index|
      result[ nums.size - index - 1 ] = result[ nums.size - index - 1 ] * right
      right = right * num
    }
    result
end

