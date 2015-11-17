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
def swap_pairs(head)
  if head
    new_head = head.next
    previous_node = ListNode.new( -1 )
    first_node = head
    second_node = head.next
    while first_node and second_node
      next_node = second_node.next
      previous_node.next = second_node
      second_node.next = first_node
      first_node.next = next_node
      previous_node = first_node
      first_node = next_node
      if first_node
        second_node = first_node.next
      else
        second_node = nil
      end
    end
    return new_head ? new_head : head
  end
  head
end
