# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

class BSTIterator
    # @param {TreeNode} root
    def initialize(root)
        if root
            @next_nodes = [ root ]
            current_node = root
            while current_node.left
                @next_nodes.push current_node.left
                current_node = current_node.left
            end
        else
            @next_nodes = []
        end
    end

    # @return {Boolean}
    def has_next
        return !@next_nodes.empty?
    end

    # @return {Integer}
    def next
        node = @next_nodes.pop
        if node.right
             @next_nodes.push node.right
             current_node = node.right
             while current_node.left
                @next_nodes.push current_node.left
                current_node = current_node.left
             end
        end
        return node.val
    end
end

# Your BSTIterator will be called like this:
# i, v = BSTIterator.new(root), []
# while i.has_next()
#    v << i.next
# end
