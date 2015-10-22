# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  if !root
    root
  else
    temp_node = root.left
    root.left = root.right
    root.right = temp_node
    invert_tree( root.left )
    invert_tree( root.right )
  end
  root
end
