/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Question2 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var carry = 0
        var node1 = l1
        var node2 = l2
        var prev = ListNode(0)
        var head = prev
        while node1 != nil || node2 != nil || carry != 0 {
            var current = ListNode(0)
            var sum = (node1 == nil ? 0 : node1!.val) + (node2 == nil ? 0 : node2!.val) + carry
            carry = sum / 10
            current.val = sum % 10
            prev.next = current
            prev = current
            node1 = (node1 == nil) ? nil : node1!.next
            node2 = (node2 == nil) ? nil : node2!.next
        }
        return head.next
    }
}
