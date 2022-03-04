public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
   func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
       var result : ListNode?
       for list in lists {
           result = mergeTwoList(l1: result, l2: list)
       }
       return result
   }
   
   func mergeTwoList(l1: ListNode?, l2: ListNode?) -> ListNode? {
       if l1 == nil {
           return l2
       }
       if l2 == nil {
           return l1
       }
       var l1 = l1
       var l2 = l2
       let rootNode = ListNode()
       var dummy = rootNode
       while l1 != nil && l2 != nil{
           if l1!.val < l2!.val {
               dummy.next = l1
               dummy = l1!
               l1 = l1?.next
           }else{
               dummy.next = l2
               dummy = l2!
               l2 = l2?.next
           }
       }
       dummy.next = l1 != nil ? l1 : l2
       return dummy.next
   }
}
