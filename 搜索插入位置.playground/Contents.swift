// 'index(of:)' is deprecated: renamed to 'firstIndex(of:)'
func searchInsert(_ nums: [Int], _ target: Int) -> Int {
    if let index1 = nums.firstIndex(of: target){
        return index1
    }else{
        for (key,value) in nums.enumerated() {
            if value > target {
                return key
            }
        }
    }
    return nums.count
}

searchInsert([7,2,3,4,6], 2)
