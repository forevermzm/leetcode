# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  cal_hash = {}
  nums.each { |num|
    if cal_hash.has_key? num
      cal_hash[ num ] += 1
    else
      cal_hash[ num ] = 1
    end
  }
  cal_hash.each_pair { |key, value|
    if value > nums.size / 2
      return key
    end
  }
end

# http://bookshadow.com/weblog/2014/12/22/leetcode-majority-element/
def majority_element(nums)
  count = 0
  result = 0
  nums.each { |num|
    if count == 0
      result = num
      count = 1
    elsif result == num
      count += 1
    else
      count -= 1
    end
  }
  result
end
