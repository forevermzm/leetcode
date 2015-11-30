# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  nums_hash = {}
  nums.each_with_index { |x, i| 
    if nums_hash.has_key? x
      if i - nums_hash[ x ] <= k
        return true
      else
        nums_hash[ x ] = i
      end
    else
      nums_hash[ x ] = i
    end
  }
  false
end
