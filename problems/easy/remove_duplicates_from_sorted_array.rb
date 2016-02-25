# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    if nums and ! nums.empty?
        if nums.size == 1
            return 1
        else
            i = 1
            current_num = nums[ 0 ]
            (1..nums.size - 1).each { |index|
                if nums[ index ] != current_num
                    current_num = nums[ index ]
                    nums[ i ] = nums[ index ]
                    i = i + 1
                end
            }
            return i
        end
    else
        return -1
    end
end
