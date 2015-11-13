require 'set'
# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    num_set = nums.to_set
    num_set.size != nums.size
end
