func trap(_ height: [Int]) -> Int {
    // 双指针
    var l = 0 ,r = height.count - 1, sum = 0
    var maxL = 0 , maxR = 0
    while l < r {
        if height[l] < height[r] {
            if height[l] >= maxL {
                maxL = height[l]
            } else {
                sum += maxL - height[l]
            }
            l += 1
        } else {
            if height[r] >= maxR {
                maxR = height[r]
            } else {
                sum += maxR - height[r]
            }
            r -= 1
        }
    }
    return sum
  
}

trap([0,1,0,2,1,0,1,3,2,1,2,1])
