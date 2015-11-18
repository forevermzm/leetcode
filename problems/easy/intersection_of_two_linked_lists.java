/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode(int x) {
 *         val = x;
 *         next = null;
 *     }
 * }
 */
public class Solution {
    public ListNode getIntersectionNode(ListNode headA, ListNode headB) {
        if ( headA != null && headB != null ) {
            ListNode nodeA = headA;
            int countA = 0;
            while ( nodeA.next != null ) {
                nodeA = nodeA.next;
                countA ++;
            }
            ListNode nodeB = headB;
            int countB = 0;
            while ( nodeB.next != null ) {
                nodeB = nodeB.next;
                countB ++;
            }
            if ( nodeA != nodeB ) {
                return null;
            } else {
                ListNode longListNode, shortListNode;
                int lengthGap = 0;
                if ( countA > countB ){
                    longListNode = headA;
                    shortListNode = headB;
                    lengthGap = countA - countB;
                } else {
                    longListNode = headB;
                    shortListNode = headA;
                    lengthGap = countB - countA;
                }
                while ( lengthGap > 0 ) {
                     longListNode = longListNode.next;
                     lengthGap --;
                }
                while ( longListNode != shortListNode ) {
                    longListNode = longListNode.next;
                    shortListNode = shortListNode.next;
                }
                return longListNode;
            }
        }
        return null;
    }
}
