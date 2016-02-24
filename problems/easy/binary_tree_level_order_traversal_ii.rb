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
def level_order_bottom(root)
    if root
        result = [ [ root.val ] ]
        nodes = [ root ]
        while true
            next_nodes = []
            next_result = []
            nodes.each { |node|
                if node.left or node.right
                    if node.left
                        next_nodes.push node.left
                        next_result.push node.left.val
                    end
                    if node.right
                        next_nodes.push node.right
                        next_result.push node.right.val
                    end
                end
            }
            if next_result.empty?
                break
            end
            nodes = next_nodes
            result.unshift next_result
        end
        return result
    end
    return []
end
