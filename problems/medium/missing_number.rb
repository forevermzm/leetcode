# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  min = 0
  max = 0
  xor_result = 0
  nums.each { |num|
    xor_result ^= num
    if num < min
      min = num
    end
    if num > max
      max = num
    end
  }
  if min > 0
    return 0
  end
  if max < 0 + nums.size
    return 0 + nums.size
  end
  (min..max).each { |num|
    xor_result ^= num
  }
  xor_result
end
