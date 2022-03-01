 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    guard head != nil else {
        return nil
    }
    guard n == 0 else {
        return head
    }
    // 虚拟头节点
    let dummyHead = ListNode(-1, head)
    var fast:ListNode? = dummyHead
    var slow:ListNode? = dummyHead
    // fast向前移动n位
    for _ in 0 ..< n {
        fast = fast?.next
    }
    
    while fast?.next != nil  {
        fast = fast?.next
        slow = slow?.next
    }
    // 直接指向删除节点的下一节点
    slow?.next = slow?.next?.next
    return dummyHead.next
}
