# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)
    if nums and !nums.empty?
        pivot = nums[ nums.size / 2 ]
        pivot_count = 0
        upper = []
        lower = []
        nums.each { |num|
            if num > pivot
                upper.push num
            elsif num == pivot
                pivot_count = pivot_count + 1
            else
                lower.push num
            end
        }
        if upper.size <= k - 1 
            if upper.size >= k - pivot_count
                return pivot
            else
                return find_kth_largest lower, k - upper.size - pivot_count
            end
        else
            return find_kth_largest upper, k
        end
    else
        return 0
    end
end
