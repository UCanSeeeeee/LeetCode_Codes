/* 超出时间限制：
func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
 var abs = [Double]()
    if nums.count == 1 {
        return false
    }
    for i in 0..<nums.count{
        for j in i+1..<nums.count{
            if nums[i] == nums[j] {
                abs.append(Double(j-i))
            }
        }
    }
    for ab in abs{
        if ab <= Double(k) {
            return true
        }
    }
    return false
}

containsNearbyDuplicate([1,2,3,4,1], 1) */

// 一定要学会使用字典 if let / guard let
func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
         if k == 0 { return false }
        var abs = [Int: Int]()
        for i in 0..<nums.count {
            if let j = abs[nums[i]], i-j <= k {
                return true
            }
            abs[nums[i]] = i
        }
        return false
    }
containsNearbyDuplicate([1,2,3,4,1], 1)
