# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
    if nums and nums.size > 2
        result = [ -1 ] * nums.size
        result[ 0 ] = nums[ 0 ]
        result[ 1 ] = nums[ 0..1 ].max
        (2..nums.size - 1).each { |i|
            result[ i ] = [ nums[ i ] + result[ i - 2 ], result[ i - 1 ] ].max
        }
        return result[ -1 ]
    elsif nums.size == 2
        return nums.max
    elsif nums.size == 1
        return nums[ 0 ]
    else
        return 0
    end
end
