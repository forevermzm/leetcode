# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    (0..m - 1).each { |i|
        nums1[ m + n - 1 - i ] = nums1[ m - 1 - i ]
    }
    i = n
    j = 0
    loc = 0
    (0..m + n - 1).each { |x|
        if j >= n
            break
        end
        if i < m + n and nums1[ i ] <= nums2[ j ]
            nums1[ loc ] = nums1[ i ]
            i = i + 1
        else
            nums1[ loc ] = nums2[ j ]
            j = j + 1
        end
        loc = loc + 1
    }
end
