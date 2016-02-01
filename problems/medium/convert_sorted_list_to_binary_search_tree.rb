# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {Integer[]} nums
# @return {TreeNode}
def sorted_array_to_bst(nums)
  if nums.size == 0
    return nil
  else
    node = TreeNode.new nums[ nums.size / 2 ]
    if nums.size == 2
      node.left = TreeNode.new nums[ 0 ]
    elsif nums.size > 2
      node.left = sorted_array_to_bst nums[ 0..nums.size / 2 - 1 ]
      node.right = sorted_array_to_bst nums[ nums.size / 2 + 1..nums.size - 1 ]
    end
    return node
  end
end
