# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @param {Integer} x
# @return {ListNode}
def partition(head, x)
  if head == nil or head.next == nil
    return head
  else
    before_head = ListNode.new ( -1 )
    after_head = ListNode.new( -1 )
    current_before_node = before_head
    current_after_node = after_head
    current_node = head
    while current_node
      if current_node.val < x
        current_before_node.next = ListNode.new current_node.val
        current_before_node = current_before_node.next
      else
        current_after_node.next = ListNode.new current_node.val
        current_after_node = current_after_node.next
      end
      current_node = current_node.next
    end
    current_before_node.next = after_head.next
    head = before_head.next
    return head
  end
end
