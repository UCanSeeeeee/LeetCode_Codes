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
    if ( nums.count == 0 || k < 1) {
        return []
    }
    if k == 1 {
        return nums
    }
    var result = [Int]()
    var root = [Int]()
    for i in 0 ..< nums.count {
        while !root.isEmpty && nums[i] >= nums[root.last!] {
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
