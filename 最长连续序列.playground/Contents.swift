class Solution {
func longestConsecutive(_ nums: [Int]) -> Int {
    if nums.count <= 1 {
        return nums.count
    }
    let nums = nums.sorted()
    var res = 1
    var temp = 1
    for i in 1..<nums.count {
        if nums[i] - nums[i - 1] == 1 {
            temp += 1
        }else if nums[i] - nums[i - 1] == 0{
            continue
        }else {
            temp = 1
        }
        res = max(res, temp)
    }
    return res
}
}
