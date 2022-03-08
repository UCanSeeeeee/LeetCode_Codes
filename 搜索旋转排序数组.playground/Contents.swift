class Solution {
func search(_ nums: [Int], _ target: Int) -> Int {

    return nums.firstIndex(of: target) ?? -1
}
}


func search(_ nums: [Int], _ target: Int) -> Int {
    return helper(nums, target, 0, nums.count - 1)
}

func helper(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int{
    if left > right { return -1 }
    
    let mid = (left + right) / 2
    
    if nums[mid] == target { return mid }
    return max(helper(nums, target, left, mid - 1), helper(nums, target, mid + 1, right))
}
