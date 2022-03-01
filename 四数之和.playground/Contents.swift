
func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    var res = [[Int]]()
    let sorted = nums.sorted()
    // 排重
    for i in 0..<sorted.count {
        if i > 0 && sorted[i] == sorted[i - 1] {
            continue
        }
        let target2 = target - sorted[i]
        //排重
        for k in (i + 1)..<sorted.count {
            if k > (i + 1) && sorted[k] == sorted[k - 1] {
                continue
            }
            // 双指针
            var left = k + 1
            var right = sorted.count - 1
            while left < right {
                let sum = sorted[k] + sorted[left] + sorted[right]
                if sum < target2 {
                    left += 1
                } else if sum > target2 {
                    right -= 1
                } else {
                    res.append([sorted[i],sorted[k],sorted[left],sorted[right]])
                    while left < right && sorted[left] == sorted[left + 1]{
                        left += 1
                    }
                    while left < right && sorted[right] == sorted[right - 1]{
                        right -= 1
                    }
                    left += 1
                    right -= 1
                }
                    
            }
        }
        
    }
    return res
}

fourSum([1,0,-1,0,-2,2],0)

// 艹 什么沙壁题目 醉了 解答于1/20 04：58
