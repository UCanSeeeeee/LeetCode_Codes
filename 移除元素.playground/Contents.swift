func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    var len = 0
    for i in 0..<nums.count {
        if nums[i] != val {
            nums[len] = nums[i]
            len += 1
        }
    }
    return len
    }

var lbs = [1,2,3,3]
removeElement(&lbs, 3)
