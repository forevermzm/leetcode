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
# Recursive
def inorder_traversal(root)
  result = []
  if root != nil
    result += inorder_traversal( root.left )
    result += [ root.val ]
    result += inorder_traversal( root.right )
  end
  result
end


# Iterative
def inorder_traversal(root)
  nodes = []
  result = []
  node = root
  while node or ! nodes.empty?
    if node
      nodes.unshift node
      node = node.left
    else
      node = nodes.shift
      result += [ node.val ]
      node = node.right
    end
  end
  result
end
