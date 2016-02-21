# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
    if nums and nums.size > 0
        red_count = 0
        white_count = 0
        blue_count = 0
        nums.each { |num|
            if num == 0
                red_count = red_count + 1
            elsif num == 1
                white_count = white_count + 1
            elsif num == 2
                blue_count = blue_count + 1
            end
        }
        nums.each_index { |i|
            if i < red_count
                nums[ i ] = 0
            elsif i < red_count + white_count
                nums[ i ] = 1
            else
                nums[ i ] = 2
            end
        }
    end
end
