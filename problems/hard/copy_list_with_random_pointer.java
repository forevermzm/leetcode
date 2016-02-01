/**
 * Definition for singly-linked list with a random pointer.
 * class RandomListNode {
 *     int label;
 *     RandomListNode next, random;
 *     RandomListNode(int x) { this.label = x; }
 * };
 */
public class Solution {
    public RandomListNode copyRandomList(RandomListNode head) {
        if ( head == null )
        {
            return head;
        } else
        {
            Map<RandomListNode, RandomListNode> oldToNew = new HashMap<>();
            RandomListNode node = head;
            RandomListNode newHead = new RandomListNode( -1 );
            RandomListNode currentNewNode = newHead;
            while ( node != null )
            {
                currentNewNode.next = new RandomListNode( node.label );
                currentNewNode = currentNewNode.next;
                oldToNew.put( node, currentNewNode );
                node = node.next;
            }
            node = head;
            currentNewNode = newHead.next;
            while ( node != null )
            {
                if ( node.random == null )
                {
                    currentNewNode.random = null;
                } else
                {
                    currentNewNode.random = oldToNew.get( node.random );
                }
                currentNewNode = currentNewNode.next;
                node = node.next;
            }
            return newHead.next;
        }
    }
}
