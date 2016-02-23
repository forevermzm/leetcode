# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
    if root
        return node_depth( root ) != -1
    end
    return true
end

def node_depth node
    if !node
        return 0
    else
        left_length = node_depth node.left
        right_length = node_depth node.right
        if left_length == -1 or right_length == -1
            return -1
        elsif ( left_length - right_length ).abs > 1
            return -1
        else
            return 1 + [ left_length, right_length ].max
        end
    end
end
