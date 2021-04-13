/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
        
        var result: Int = 0 //initial binary value is 0
        
        var curNode: ListNode? = head //start from current head node
        
        while curNode != nil { //if current node is not empty
            // << bitwise left by one square thes value
            result = (result << 1) | curNode!.val
            curNode = curNode!.next
        }
        return result
    }
}