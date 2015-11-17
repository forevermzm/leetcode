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
def reverse_list(head)
  if head
    previous_node = nil
    node = head
    while node
      next_node = node.next
      node.next = previous_node
      previous_node = node
      node = next_node
    end
    head = previous_node
  end
  head
end
