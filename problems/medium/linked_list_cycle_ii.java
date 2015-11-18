/**
 * Definition for singly-linked list.
 * class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) {
 *         val = x;
 *         next = null;
 *     }
 * }
 */

// http://fisherlei.blogspot.com/2013/11/leetcode-linked-list-cycle-ii-solution.html
public class Solution {
    public ListNode detectCycle(ListNode head) {
        if ( head != null ) {
            ListNode fastNode = head;
            ListNode slowNode = head;
            while ( fastNode != null && fastNode.next != null ) {
                fastNode = fastNode.next.next;
                slowNode = slowNode.next;
                if ( slowNode == fastNode ){
                    fastNode = head;
                    while ( fastNode != slowNode ) {
                        fastNode = fastNode.next;
                        slowNode = slowNode.next;
                    }
                    return slowNode;
                }
            }
        }
        return null;
    }
}
