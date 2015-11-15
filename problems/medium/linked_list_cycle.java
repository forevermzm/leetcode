/**
 * Definition for singly-linked list.
*/
public class ListNode {
    int val;
    ListNode next;
    ListNode(int x) {
        val = x;
        next = null;
    }
}
public class Solution {
    public boolean hasCycle(ListNode head) {
        if ( head == null ) {
            return false;
        }
        ListNode fastNode = head;
        ListNode slowNode = head;
        while ( slowNode != null ) {
            if ( fastNode == null ) {
                return false;
            } else if ( fastNode.next == slowNode ) {
                return true;
            } else {
                fastNode = fastNode.next;
                if ( fastNode == null ) {
                     return false;
                } else if ( fastNode.next == slowNode ) {
                    return true;
                }
                fastNode = fastNode.next;
            }
            slowNode = slowNode.next;
        }
        return false;
    }
}
