    func threeSum(_ nums: [Int]) -> [[Int]] {
        //小于三个元素直接返回空
        if nums.count < 3 {
                    return []
                }
        var res = [[Int]]()
        // 排序
        let nums = nums.sorted()
        for i in 0..<nums.count-2 {
            //首元素大于0 break
            if nums[i]>0 {
                break}
            //首元素排重
            if i > 0 && nums[i] == nums[i-1] {
                continue}
            //双指针
            var l = i+1
            var r = nums.count-1

            while l < r {
                let sum = nums[i] + nums[l] + nums[r]
                if sum == 0 {
                    res.append([nums[i],nums[l],nums[r]])
               //双指针排重
                    while l < r && nums[l] == nums[l+1] {
                        l+=1}
                    while l < r && nums[r] == nums[r-1] {
                        r-=1}
                    l += 1
                    r -= 1
                    } else if sum < 0 {
                    l += 1
                    } else {
                    r -= 1
                }

                }
            }
        return res
    }



threeSum([-4,-3,-2,-1,-1,0,0,1,2,3,4])


