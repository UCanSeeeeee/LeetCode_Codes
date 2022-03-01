func maxArea(_ height: [Int]) -> Int {
    var left = 0 , right = height.count - 1
    var maxS = 0
    while left < right {
        maxS = max(maxS,(right-left)*min(height[left], height[right]))
        if height[left] < height[right]{
            left += 1
        }else{
            right -= 1
        }
    }
   return maxS
    }

maxArea([1,2,3])
