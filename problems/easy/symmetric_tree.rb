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
def is_symmetric(root)
    if root
        left_nodes = [ root.left ]
        right_nodes = [ root.right ]
        while true
            if left_nodes.size != right_nodes.size
                return false
            end
            if left_nodes.empty?
                return true
            end
            new_left_nodes = []
            new_right_nodes = []
            left_nodes.each_with_index { |left_node, i|
                right_node = right_nodes[ -1 - i ]
                if ! left_node and !right_node
                    next
                elsif !left_node or !right_node or left_node.val != right_node.val
                    return false
                else
                    new_left_nodes.push left_node.left
                    new_left_nodes.push left_node.right
                    new_right_nodes.unshift right_node.right
                    new_right_nodes.unshift right_node.left
                end
            }
            left_nodes = new_left_nodes
            right_nodes = new_right_nodes
        end
    end
    return true
end
