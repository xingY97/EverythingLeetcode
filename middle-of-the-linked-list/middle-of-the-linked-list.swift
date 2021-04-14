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
    func middleNode(_ head: ListNode?) -> ListNode? {
        
        
        //base conditon
        
        if (head == nil) {
            return nil
        }
        var fastPointer = head
        var slowPointer = head
        
        while (fastPointer?.next != nil && fastPointer?.next?.next != nil) {
            fastPointer = fastPointer?.next?.next
            slowPointer = slowPointer?.next
        }
        
        if(fastPointer?.next != nil) {
            slowPointer = slowPointer?.next
        }
        return slowPointer
    }
}