public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }


func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let rst = ListNode()
    var currentNode = rst
    var carry = 0
    
    guard l1 != nil else {
        return l2
    }
    guard l2 != nil else {
        return l1
    }
    
    var list1 = l1, list2 = l2
    while list1 != nil || list2 != nil {
        let x = list1?.val ?? 0
        let y = list2?.val ?? 0
        let sum = x + y + carry
        carry = sum / 10 // 进位
        let node = ListNode.init(sum % 10)
        currentNode.next = node
        currentNode = node
        
        if list1 != nil {
            list1 = list1?.next
        }
        if list2 != nil {
            list2 = list2?.next
        }
    }
    if carry > 0 {
        currentNode.next = ListNode.init(carry)
    }
    return rst.next
    }
