// https://leetcode.com/problems/remove-nth-node-from-end-of-list/
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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var count: Int = 0
        var current = head
        var next = head
        
        // List count
        while current?.next != nil {
            count += 1
            if current?.next != nil {
                current = current?.next    
            }
        }
        
        guard count + 1 != n else { return head?.next }
        
        // previous deleted Node
        count -= n
        current = head
        while count > 0 {
            current = current?.next
            next = next?.next
            count -= 1
        }
        
        next = next?.next
        current?.next = next?.next
        
        return head
    }
}