# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  if nums && ! nums.empty?
    if target < nums[ 0 ]
      0
    elsif target > nums[ nums.size - 1 ]
      nums.size
    else
      upper = nums.size - 1
      lower = 0
      location = upper / 2
      while true
        if nums[ location ] == target
          return location
        elsif upper <= lower
          if nums[ upper ] > target
            return upper
          else
            return upper + 1
          end
        elsif nums[ location ] < target
          lower = location + 1
        else
          upper = location - 1
        end
        location = lower + ( upper - lower ) / 2
      end
    end
  else
    0
  end
end
