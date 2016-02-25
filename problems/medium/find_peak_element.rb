# @param {Integer[]} nums
# @return {Integer}
def find_peak_element(nums)
    if nums
        if nums.size == 1
            return 0
        elsif nums.size == 2
            return nums[ 0 ] > nums[ 1 ] ? 0 : 1
        else
            if nums[ 0 ] > nums[ 1 ]
                return 0
            elsif nums[ -1 ] > nums[ -2 ]
                return nums.size - 1
            else
                (1..nums.size - 2).each { |i|
                    if nums[ i ] > nums[ i - 1 ] and nums[ i ] > nums[ i + 1 ]
                        return i
                    end
                }
                return -1
            end
        end
    end
    return - 1
end
