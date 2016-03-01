# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
    subsets = [ [] ]
    if nums and !nums.empty?
        nums.sort
        nums.each { |num|
            old_subsets = subsets.dup
            old_subsets.each { |subset|
                tmp_subset = subset.dup
                tmp_subset.push num
                subsets.push tmp_subset.sort
            }
        }
    end
    subsets
end
