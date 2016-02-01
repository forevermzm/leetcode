# @param {Integer[]} nums
# @return {Integer}

# Binary Search for the number.
def find_duplicate(nums)
    if !nums or nums.size == 0
        return nil
    else
        low = 1
        high = nums.size - 1
        mid = ( low + high ) / 2
        while true
            if ( low >= high )
                return low
            else
                count = 0
                nums.each { |num|
                    if num <= mid
                        count = count + 1
                    end
                }
                if count > mid
                    high = mid
                else
                    low = mid + 1
                end
                mid = ( low + high ) / 2
            end
        end
    end
end

# Use a loop detector. http://segmentfault.com/a/1190000003817671
def find_duplicate(nums)
    if !nums or nums.size == 0
        return nil
    else
        fast = nums[ 0 ]
        slow = nums[ 0 ]
        while true
            fast = nums[ fast ]
            fast = nums[ fast ]
            slow = nums[ slow ]
            if fast == slow
                new_node = nums[ 0 ]
                while new_node != slow
                    new_node = nums[ new_node ]
                    slow = nums[ slow ]
                end
                return slow
            end
        end
    end
end
