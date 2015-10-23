# http://www.cnblogs.com/grandyang/p/4741122.html

# @param {Integer[]} nums
# @return {Integer[]}
def single_number(nums)
  xor_result = 0
  nums.each { |num|
    xor_result ^= num
  }
  result = [0, 0]
  right_most_one = xor_result & ( -xor_result )
  nums.each { |num|
    if num & right_most_one == 0
      result[ 0 ] ^= num
    else 
      result[ 1 ] ^= num
    end
  }
  result
end
