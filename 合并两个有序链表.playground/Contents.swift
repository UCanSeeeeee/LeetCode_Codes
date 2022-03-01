/*
class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil { // 谁移动到表尾部 返回另一个 因为都是升序 没必要再比下去了
            return l2
        }
        
        if l2 == nil {
            return l1
        }
        if l1!.val <= l2!.val {  // l1第一个元素小于 对位的l2的话, l1的next就应该指向 l1的下位和 对位的l2相比较之下小的那个
            l1?.next = mergeTwoLists(l1?.next, l2)
            return l1
        } else {
            l2?.next = mergeTwoLists(l1, l2?.next) // 如果 l1第一个元素大于对位的l2 则以l2为开头,往下比较
            return l2
        }
    }
}
*/

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    guard l1 != nil else {
        return l2
    }
    guard l2 != nil else {
        return l1
    }
    var p1 = l1, p2 = l2 //p1,p2指针分别指向l1和l2
    var newList = ListNode(), currP = newList//newList代表新链表，currP代表当前位置
    while p1 != nil && p2 != nil {
        if p1!.val <= p2!.val {//如果p1的数值较小，将其加到新节点上
            currP.next = ListNode(p1!.val)
            p1 = p1?.next//p1后移一位
        }else {//如果p2的数值较小，将其加到新节点上
            currP.next = ListNode(p2!.val)
            p2 = p2?.next//p2后移一位
        }
        currP = currP.next!//新列表
    }
    currP.next = p1 == nil ? p2 : p1 //如果l1或l2已经走完，剩下的节点也要加上去
    return newList.next //头节点是空的，所以返回newList.next
}
