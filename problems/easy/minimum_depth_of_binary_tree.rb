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
def min_depth(root)
    depth = 0
    if root
        this_level_nodes = [ root ]
        while ! this_level_nodes.empty?
            depth = depth + 1
            next_level_nodes = []
            this_level_nodes.each { |node|
                if !node.left and !node.right
                    return depth
                else
                    if node.left
                        next_level_nodes.push node.left
                    end
                    if node.right
                        next_level_nodes.push node.right
                    end
                end
            }
            this_level_nodes = next_level_nodes
        end
    end
    depth
end
