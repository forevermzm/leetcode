# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  if p.val > q.val
    temp = p
    p = q
    q = temp
  end
  if root.nil? or ( p.val <= root.val and root.val <= q.val )
    root
  elsif root.val > q.val
    lowest_common_ancestor( root.left, p, q )
  elsif root.val < p.val
    lowest_common_ancestor( root.right, p, q )
  end
end
