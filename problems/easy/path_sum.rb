# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} sum
# @return {Boolean}
def has_path_sum(root, sum)
    if root and ( root.left or root.right )
        if has_path_sum root.left, sum - root.val
            return true
        else
            return has_path_sum root.right, sum- root.val
        end
    elsif root
        return root.val == sum
    else
        return false
    end
end
