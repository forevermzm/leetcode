# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  if l1 and l2
    l1_node = l1
    l2_node = l2
    head = ListNode.new( -1 )
    current_node = head
    while l1_node and l2_node
      if l1_node.val < l2_node.val
        current_node.next = l1_node
        l1_node = l1_node.next
      else
        current_node.next = l2_node
        l2_node = l2_node.next
      end
      current_node = current_node.next
    end
    current_node.next = l1_node ? l1_node : l2_node
    return head.next
  else
    return ( l1 or l2 )
  end
end
