# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer}
def sum_numbers(root)
    if root
        sum = 0
        result = sum_numbers_helper root
        result.each { |num_array|
            i = num_array.size
            num_array.each { |num|
                sum = sum + num * ( 10 ** ( i - 1 ) )
                i = i - 1
            }
        }
        return sum
    else
        return 0
    end
end

def sum_numbers_helper root
    if !root.left and !root.right
        return [ [ root.val ] ]
    else
        result = []
        if root.left
            left_numbers = sum_numbers_helper root.left
            left_numbers.each { |num|
                num.unshift root.val
                result.push num
            }
        end
        if root.right
            right_numbers = sum_numbers_helper root.right
            right_numbers.each { |num|
                num.unshift root.val
                result.push num
            }
        end
        return result
    end
end
