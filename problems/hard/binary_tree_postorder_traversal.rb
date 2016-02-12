i# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {Integer[]}
def postorder_traversal(root)
    # recursive_postorder root
    iterative_postorder root
end

def recursive_postorder( root )
    sub_array = []
    if root
        if root.left
            sub_array.push recursive_postorder root.left
        end
        if root.right
            sub_array.push recursive_postorder root.right
        end
        sub_array.push root.val
    end
    return sub_array.flatten
end

def iterative_postorder( root )
    if root
        to_be_visited = [ root ]
        visited = []
        result_array = []
        while ! to_be_visited.empty?
            node = to_be_visited.shift
            if ( node.right and ! visited.include? node.right ) or ( node.left and ! visited.include? node.left )
                to_be_visited.unshift node
                if node.right
                    to_be_visited.unshift node.right
                end
                if node.left
                    to_be_visited.unshift node.left
                end
            else
                result_array.push node.val
                visited.push node
            end
        end
        return result_array
    end
    return []
end
