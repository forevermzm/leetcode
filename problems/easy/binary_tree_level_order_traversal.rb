# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[][]}
def level_order(root)
    if root
        parent_level = [ root ]
        result = [ [ root.val ] ]
        while ! parent_level.empty?
            this_level_nodes = []
            this_level_result = []
            parent_level.each { |parent|
                if parent.left || parent.right
                    if parent.left
                        this_level_result.push parent.left.val
                        this_level_nodes.push parent.left
                    end
                    if parent.right
                        this_level_result.push parent.right.val
                        this_level_nodes.push parent.right
                    end
                end
            }
            if ! this_level_result.empty?
                result.push this_level_result
            end
            parent_level = this_level_nodes
        end
        return result
    else
        return []
    end
end
