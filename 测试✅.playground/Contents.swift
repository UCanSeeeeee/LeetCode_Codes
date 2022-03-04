import Darwin

//// 删除链表的倒数第N个节点
// public class ListNode {
//     public var val: Int
//     public var next: ListNode?
//     public init() { self.val = 0; self.next = nil; }
//     public init(_ val: Int) { self.val = val; self.next = nil; }
//     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}
//func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
//    guard head != nil else {
//        return nil
//    }
//    guard n != 0 else {
//        return head
//    }
//
//    let dummyHead = ListNode(-1,head)
//    var fast:ListNode? = dummyHead
//    var slow:ListNode? = dummyHead
//
//    for _ in 0..<n {
//        fast = fast?.next
//    }
//
//    while fast?.next != nil {
//        fast = fast?.next
//        slow = slow?.next
//    }
//
//    slow?.next = slow?.next?.next
//    return dummyHead.next
//}
//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}
//
//
//func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
//    if list1 == nil {
//        return list2
//    }
//    if list2 == nil {
//        return list1
//    }
//
//    if list1!.val < list2!.val {
//        list1?.next = mergeTwoLists(list1?.next, list2)
//        return list1
//    }else {
//        list2?.next = mergeTwoLists(list2?.next, list1)
//        return list2
//    }
//
//    }
//
//func isValid(_ s: String) -> Bool {
//    guard s.count % 2 == 0 else{
//        return  false
//    }
//
//    let map:[Character:Character] = ["(":")",
//                                     "{":"}",
//                                     "[":"]"]
//    var stack = [Character]()
//    for char in s {
//        if map[char] != nil {
//            stack.append(char)
//        }else if stack.isEmpty{
//            return false
//        }else if map[stack.last!] != char{
//            return false
//        }else {
//            stack.removeLast()
//        }
//    }
//    return stack.isEmpty
//
//}
//
//func longestPalindrome(_ s: String) -> String {
//    // 中心扩展法
//    let cArray = Array(s)
//    var center = [0, 0]
//    var maxLen = 0
//    for i in 0..<(cArray.count - 1) {
//        let len1 = maxLength(array:cArray, fromCenter:[i, i])
//        let len2 = maxLength(array:cArray, fromCenter:[i, i + 1])
//        if len1 > maxLen { maxLen = len1; center = [i, i] }
//        if len2 > maxLen { maxLen = len2; center = [i, i + 1] }
//    }
//    return String(cArray[(center[0] - (maxLen - 1)/2)...(center[1] + (maxLen - 1)/2)])
//}
//
//func maxLength(array:[Character], fromCenter:[Int]) -> Int {
//    var left = fromCenter[0]
//    var right = fromCenter[1]
//    while left >= 0 && right < array.count && array[left] == array[right] {
//        left -= 1; right += 1
//    }
//    return right - left - 1
//}
//
//longestPalindrome("abccba")
//func longestPalindrome(_ s: String) -> String {
//    let curS = Array(s)
//    var center = [0,0]
//    var maxlen = 0
//
//    for i in 0 ..< curS.count {
//        let len1 = curLen(array: curS, fromcenter: [i,i])
//        let len2 = curLen(array: curS, fromcenter: [i,i+1])
//        if len1 > maxlen {maxlen = len1; center = [i,i]}
//        if len2 > maxlen {maxlen = len2; center = [i,i+1]}
//    }
//
//    return String(curS[(center[0] - (maxlen - 1)/2)...(center[1] + (maxlen - 1)/2)])
//}
//
//func curLen(array:[Character], fromcenter:[Int]) -> Int{
//    var left = fromcenter[0]
//    var right = fromcenter[1]
//    while left >= 0 && right < array.count && array[left] == array[right]{
//        left -= 1
//        right += 1
//    }
//    return right - left - 1
//}
//
//longestPalindrome("b")
//func trap(_ height: [Int]) -> Int {
//    var left = 0
//    var right = height.count - 1
//    var sum = 0
//    var maxL = 0
//    var maxR = 0
//    while left < right {
//        if height[left] < height[right]{
//            if height[left] >= maxL{
//                maxL = height[left]
//            }else {
//                sum = sum + maxL - height[left]
//            }
//            left += 1
//        }else {
//                if height[right] >= maxR{
//                    maxR = height[right]
//                }else{
//                    sum = sum + maxR - height[right]
//                }
//            right -= 1
//        }
//
//    }
//    return sum
//}
//func letterCombinations(_ digits: String) -> [String] {
//    guard digits != "" else {
//        return []
//    }
//
//    let map:[Character:[Character]] = ["2":["a","b","c"],
//                                       "3":["d","e","f"],
//                                       "4":["g","h","i"],
//                                       "5":["j","k","l"],
//                                       "6":["m","n","o"],
//                                       "7":["p","q","r","s"],
//                                       "8":["t","u","v"],
//                                       "9":["w","x","y","z"]]
//    var x = [String]()
//    x.append("")
//    for char in digits {
//        let arr = map[char]!
//        var currentArr = [String]()
//        for current in x {
//        for i in arr {
//            currentArr.append(current + String(i))
//        }
//        }
//        x = currentArr
//    }
//    return x
//}
//
//letterCombinations("2")
//func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
//    guard mat.count * mat[0].count == r * c else {
//        return mat
//    }
//    var result = [[Int]]()
//    var temp = [Int]()
//    for array in mat {
//        for i in array{
//            temp.append(i)
//            if temp.count == c  {
//                result.append(temp)
//                temp.removeAll()
//            }
//        }
//    }
//    return result
//}
//func maxProfit(_ prices: [Int]) -> Int {
//
//    guard prices.count > 1 else {
//        return 0
//    }
//
//    var first = prices[0]
//    var maxDifference = 0
//
//    for i in 1..<prices.count {
//        if prices[i] >= first {
//            first = prices[i]
//        }else {
//            maxDifference = max(maxDifference, prices[i] - first)
//        }
//    }
//    return maxDifference
//}
//func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//    var map = [Int:Int]()
//    var result = [Int]()
//    for i in nums1 {
//        if map[i] != nil  {
//             map[i]! += 1
//        }else {
//            map[i] = 1
//        }
//    }
//
//    for i in nums2 {
//        if map[i]! > 0 {
//            result.append(i)
//            map[i]! -= 1
//        }
//    }
//    return result
//}
//
//func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//    var mRight = m - 1
//    var nRight = n - 1
//
//    while nRight >= 0 {
//        if mRight>=0 && nums1[mRight] > nums2[nRight] {
//            nums1[mRight + nRight + 1] = nums1[mRight]
//            mRight -= 1
//        }else{
//            nums1[mRight + nRight + 1] = nums2[nRight]
//            nRight -= 1
//        }
//    }
//
//}
//
//func maxSubArray(_ nums: [Int]) -> Int {
//    var sum = 0
//    var pointer = nums[0]
//    for num in nums {
//        if sum > 0 {
//            sum += num
//
//        }else {
//            sum = num
//        }
//        pointer = max(sum, pointer)
//    }
//    return pointer
//}
//func containsDuplicate(_ nums: [Int]) -> Bool {
//
//    var hashset = Set<Int>()
//
//    for num in nums {
//        if hashset.contains(num) {
//            return true
//        }else {
//            hashset.insert(num)
//        }
//    }
//return false
//}
//
//containsDuplicate([1,2,3,4])

//func searchInsert(_ nums: [Int], _ target: Int) -> Int {
//    for (i,n) in nums.enumerated() {
//        if target <= n {
//            return i
//        }
//    }
//    return nums.count
//}
//func intToRoman(_ num: Int) -> String {
//    let nums = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1]
//    let strs = ["M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I"]
//    var num = num
//    var i = 0
//    var str = ""
//
//    while num > 0 {
//       let temp = num/nums[i]
//        for _ in 0..<temp {
//            str += strs[i]
//        }
//        num -= temp*nums[i]
//        i += 1
//    }
//
//return str
//
//}
//func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//    var len = 0
//    for i in 0..<nums.count {
//        if nums[i] != val {
//            nums[len] = nums[i]
//            len += 1
//        }
//    }
//    return len
//
//}
//func threeSum(_ nums: [Int]) -> [[Int]] {
//    if nums.count < 3 {
//                 return []
//             }
//    var result = [[Int]]()
//    let nums = nums.sorted()
//        for i in 0 ..< nums.count - 2 {
//            var left = i + 1
//            var right = nums.count - 1
//
//            if i>0 && nums[i] == nums[i - 1]{
//                continue
//            }
//
//            while left < right {
//                let sum = nums[i] + nums[left] + nums[right]
//                if sum == 0 {
//                    result.append([nums[i],nums[left],nums[right]])
//                    while left < right && nums[left] == nums[left + 1]{
//                        left += 1
//                    }
//                    while left < right && nums[right] == nums[right - 1]{
//                        right -= 1
//                    }
//                    left += 1
//                    right -= 1
//                }else if sum > 0 {
//                    right -= 1
//                }else {
//                    left += 1
//                }
//            }
//
//
//        }
//    return result
//    }
//
//func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
//    // 特殊情况
//    guard nums.count >= 4 else {
//        return []
//    }
//
//    var result = [[Int]]()
//    let nums = nums.sorted()
//
//    for i in 0 ..< nums.count - 3 {
//        if i > 0 && nums[i] == nums[i - 1] {
//            continue
//        }
//        for nextI in i + 1 ..< nums.count - 2 {
//            if nextI > i + 1 && nums[nextI] == nums[nextI - 1] {
//                continue
//            }
//            var left = nextI + 1
//            var right = nums.count - 1
//            while left < right {
//                let sum = nums[i] + nums[nextI] + nums[left] + nums[right]
//                if sum < target {
//                    left += 1
//                }else if sum > target {
//                    right -= 1
//                }else {
//                    result.append([nums[i],nums[nextI],nums[left],nums[right]])
//                    while left < right && nums[left] == nums[left + 1]{
//                        left += 1
//                    }
//                    while left < right && nums[right] == nums[right - 1]{
//                        right -= 1
//                    }
//                    left += 1
//                    right -= 1
//                }
//            }
//        }
//    }
//    return result
//}
//fourSum([2,2,2,2,2], 8)
//func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
//    var hash = [Int:Int]()
//    for i in 0 ..< nums.count {
//        if let j = hash[nums[i]] , i - j <= k{
//                return true
//        }
//        hash[nums[i]] = i
//    }
//return false
//}


//func dominantIndex(_ nums: [Int]) -> Int {
//    let temp = nums.sorted()
//    let num = nums.count
//    if temp[num - 1] / temp[num - 2] >= 2 {
//        for i in 0..<nums.count{
//            if nums[i] == temp[num - 1] {
//                return i
//            }
//        }
//    }
//    return -1
//}
//func dominantIndex(_ nums: [Int]) -> Int {
//    guard nums.count > 1 else{
//        return 0
//    }
//
//    var a = -1
//    var b = 0
//
//    for i in 1..<nums.count {
//        if nums[i] > nums[b] {
//            a = b
//            b = i
//        }else if a == -1 || nums[i] > nums[a]{
//            a = i
//        }
//    }
//    print(b)
//    print(a)
//    return nums[b] >= nums[a] * 2 ? b : -1
//}
//
//dominantIndex([1,2,3,4])

//func maxArea(_ height: [Int]) -> Int {
//    var left = 0 , right = height.count - 1
//    var maxS = 0
//    while left < right{
//        maxS = max(maxS, (right - left) * min(height[left],height[right]))
//        if height[left] < height[right] {
//            left += 1
//        }else {
//            right -= 1
//        }
//    }
//    return maxS
//}
//func removeDuplicates(_ nums: inout [Int]) -> Int {
//    var hash = [Int:Int]()
//    var len = 0
//    for i in 0..<nums.count {
//        if let index = hash[i]{
//            continue
//        }
//        hash[nums[i]] = 0
//        nums[len] = nums[i]
//        len += 1
//    }
//    return len
//}
//func isPalindrome(_ x: Int) -> Bool {
//    if x < 0 {
//        return false
//    }
//    var newx = 0
//    var xxxx = x
//    while xxxx != 0 {
//        newx = newx * 10 + xxxx % 10
//        xxxx /= 10
//    }
//
//    return newx == x
//
//}
//func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
//    var temp = [Int](repeating: 0, count: n + 1)
//    for i in trust {
//        temp[i[0]] -= 1
//        temp[i[1]] += 1
//    }
//    for i in 1 ..< temp.count {
//        if temp[i] == n - 1 {
//            return i
//        }
//    }
//    return -1
//}
//func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
//    var full = numBottles
//    var empty = numBottles
//    while empty >= numExchange {
//        full += empty / numExchange
//        empty = empty / numExchange + empty % numExchange
//    }
//    return full
//
//}
//class Solution {
//    var ans = [String]()
//
//    func generateParenthesis(_ n: Int) -> [String] {
//        coding(left: n, right: n, result: "")
//        return ans
//    }
//
//    func coding(left:Int,right:Int,result:String){
//        if right > 0 {
//            if left > 0 {
//                coding(left: left - 1, right: right, result: result + "(")
//            }
//            if left < right {
//                coding(left: left, right: right - 1, result: result + ")")
//            }
//        }else{
//            ans.append(result)
//        }
//
//    }
//}
//class Solution {
//    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
//        guard !lists.isEmpty else { return nil }
//        var nums: [Int] = []
//        var rootNode: ListNode? = ListNode()
//        var currentNode: ListNode?
//        lists.forEach {
//            var current = $0
//            while current != nil, let val = current?.val {
//                nums.append(val)
//                current = current?.next
//            }
//        }
//        nums.sort()
//        nums.forEach {
//            let node = ListNode($0)
//            if currentNode == nil {
//                currentNode = node
//                rootNode?.next = currentNode
//            } else {
//                currentNode?.next = node
//                currentNode = node
//            }
//        }
//        return rootNode?.next
//    }
//}
// public class ListNode {
//     public var val: Int
//     public var next: ListNode?
//     public init() { self.val = 0; self.next = nil; }
//     public init(_ val: Int) { self.val = val; self.next = nil; }
//     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
// }
//
//class Solution {
//    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
//        var result : ListNode?
//        for list in lists {
//            result = mergeTwoList(l1: result, l2: list)
//        }
//        return result
//    }
//
//    func mergeTwoList(l1: ListNode?, l2: ListNode?) -> ListNode? {
//        if l1 == nil {
//            return l2
//        }
//        if l2 == nil {
//            return l1
//        }
//        var l1 = l1
//        var l2 = l2
//        let rootNode = ListNode()
//        var dummy = rootNode
//        while l1 != nil && l2 != nil{
//            if l1!.val < l2!.val {
//                dummy.next = l1
//                dummy = l1!
//                l1 = l1?.next
//            }else{
//                dummy.next = l2
//                dummy = l2!
//                l2 = l2?.next
//            }
//        }
//        dummy.next = l1 != nil ? l1 : l2
//        return dummy.next
//    }
//}
//func nextPermutation(_ nums: inout [Int]) {
//    var index = nums.count - 2
//    while index > 0 && nums[index] > nums[index + 1] {
//        index -= 1
//    }
//    if index == 0 {
//
//    }
//    var  cur = nums.count - 1
//
//    while cur > 0 && nums[cur] < nums[index] {
//        cur -= 1
//    }
//    nums.swapAt(index, cur)
//    nums = nums[0...index] + nums[index + 1 ... nums.count - 1].sorted()
//
//}
//func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
//    if nums.count < 2 {
//        return nums
//    }
//    var arr = [Int]()
//    var result = [Int]()
//
//    for (i,x) in nums.enumerated() {
//        if i >= k && arr[0] <= i - k {
//            arr.removeFirst()
//        }
//        while !arr.isEmpty && nums[arr.last!] <= x {
//            arr.popLast()
//        }
//        arr.append(i)
//        if i >= k - 1 {
//            result.append(nums[arr[0]])
//        }
//
//    }
// return result
//}
func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
    if nums.count == 0 || k < 1 {
        return []
    }
    if k == 1 {
        return nums
    }
    var result = [Int]()
    var root = [Int]()
    for i in 0..<nums.count {
        while !nums.isEmpty && nums[i] >= nums[root.last!] {
            root.removeLast()
        }
        root.append(i)
        let left = i - k + 1
        if left < 0 {
            continue
        }
        if root.first! < left {
            root.removeFirst()
        }
        result.append(nums[root.first!])
    }
    return result
}
maxSlidingWindow([1,3,-1,-3,5,3,6,7], 3)


