# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    i = 0
    nums.each { |num|
        if num != val
            nums[ i ] = num
            i = i + 1
        end
    }
    return i
end
