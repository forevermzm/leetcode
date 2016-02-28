# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    if nums and !nums.empty?
        current_num = nums[ 0 ]
        happened_count = 1
        insert_loc = 1
        (1..nums.size - 1).each { |i|
            if nums[ i ] == current_num
                happened_count = happened_count + 1
                if happened_count <= 2
                    nums[ insert_loc ] = nums[ i ]
                    insert_loc = insert_loc + 1
                end
            else
                current_num = nums[ i ]
                happened_count = 1
                nums[ insert_loc ] = nums[ i ]
                insert_loc = insert_loc + 1
            end
        }
        return insert_loc
    else
        return 0
    end
end
