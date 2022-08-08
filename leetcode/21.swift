// https://leetcode.com/problems/merge-two-sorted-lists/
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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil || list2 == nil {
            return list1 ?? list2
        }
        
        let head: ListNode = ListNode()
        var tail: ListNode? = head
        var l1: ListNode? = list1
        var l2: ListNode? = list2
        
        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                tail?.next = l1
                tail = l1
                l1 = l1!.next
            } else {
                tail?.next = l2
                tail = l2
                l2 = l2!.next
            }
        }
        
        if l1 != nil {
            tail?.next = l1
        }
        if l2 != nil {
            tail?.next = l2
        }
        
        return head.next
    }
}