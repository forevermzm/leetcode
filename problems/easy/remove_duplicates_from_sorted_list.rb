# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
  if head
    current_node = head
    next_node = head.next
    while next_node
      if current_node.val != next_node.val
        current_node.next = next_node
        current_node = next_node
      end
      next_node = next_node.next
    end
    current_node.next = next_node
  end
  head
end
