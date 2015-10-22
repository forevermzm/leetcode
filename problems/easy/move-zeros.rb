# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  zero_count = 0
  next_available_slot = 0
  size = nums.size
  nums.each_with_index { | num, index |
    if num == 0
      zero_count += 1
    else
      nums[ next_available_slot ] = num
      next_available_slot += 1
    end
  }
  puts nums.to_s
  nums.map!.with_index { |num, i|
    if i >= size - zero_count 
      0
    else
      num
    end
  }
end
