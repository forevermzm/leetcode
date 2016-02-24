# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def right_side_view(root)
    if root
        result = []
        level_nodes = [ root ]
        while ! level_nodes.empty?
            result.push level_nodes[ -1 ].val
            next_level_nodes = []
            level_nodes.each { |node|
                if node.left
                    next_level_nodes.push node.left
                end
                if node.right
                    next_level_nodes.push node.right
                end
            }
            level_nodes = next_level_nodes
        end
        return result
    else
        return []
    end
end
