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
#
# Recursive
def preorder_traversal(root)
  result = []
  if root != nil
    result += [ root.val ]
    result += preorder_traversal( root.left )
    result += preorder_traversal( root.right )
  end
  result
end

# Iterative
def preorder_traversal(root)
  result = []
  nodes = [ root ]
  while nodes.size != 0
    node = nodes.shift
    if node != nil
      result += [ node.val ]
      nodes.unshift node.right
      nodes.unshift node.left
    end
  end
  result
end
