func nextPermutation(_ nums: inout [Int]) {
    var index = nums.count - 2
    while index >= 0 && nums[index] >= nums[index + 1] {
        index -= 1
    }
    var  cur = nums.count - 1
    if index >= 0 {
    while cur >= 0 && nums[cur] <= nums[index] {
        cur -= 1
    }
        nums.swapAt(index, cur)
        nums = nums[0...index] + nums[index + 1 ... nums.count - 1].sorted()
    }else {
        nums = nums.sorted()
    }
    }
