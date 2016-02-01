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
def odd_even_list(head)
    if head
        even_head = head.next
        even_node = even_head
        odd_node = head
        while even_node and even_node.next
            odd_node.next = even_node.next
            even_node.next = odd_node.next.next
            odd_node = odd_node.next
            even_node = even_node.next
        end
        odd_node.next = even_head
    end
    return head
end
