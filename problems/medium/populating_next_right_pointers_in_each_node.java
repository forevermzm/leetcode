/**
 * Definition for binary tree with next pointer.
 * public class TreeLinkNode {
 *     int val;
 *     TreeLinkNode left, right, next;
 *     TreeLinkNode(int x) { val = x; }
 * }
 */
public class Solution {
    public void connect(TreeLinkNode root) {
        if ( root != null ) {
            TreeLinkNode parentLevelNode = root;
            TreeLinkNode currentNode = parentLevelNode.left;
            TreeLinkNode currentLevelLeftMostNode = currentNode;
            while ( currentNode != null ) {
                if ( currentNode == parentLevelNode.left ) {
                    currentNode.next = parentLevelNode.right;
                    currentNode = currentNode.next;
                } else {
                    if ( parentLevelNode.next != null ) {
                        parentLevelNode = parentLevelNode.next;
                        currentNode.next = parentLevelNode.left;
                        currentNode = currentNode.next;
                    } else {
                        parentLevelNode = currentLevelLeftMostNode;
                        currentNode = parentLevelNode.left;
                        currentLevelLeftMostNode = currentNode;
                    }
                }
            }
        }
    }
}
