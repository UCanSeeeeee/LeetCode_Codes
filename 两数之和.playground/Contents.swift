// 暴力
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for index1 in 0...(nums.count-1) {
        for index2 in (index1+1)...(nums.count-1) {
        if nums[index1] + nums[index2] == target
        {
            return [index1,index2]
        }
    }
 }
    return []
}


twoSum([1,5,9], 6)

// 哈希表
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int:Int]()
        for (i, n) in nums.enumerated() {
            if let index = dict[target - n] {
                return [index, i]
            }
            dict[n] = i
        }
        return []
    }

twoSum([3,2,4], 5)

class Solution {
}
