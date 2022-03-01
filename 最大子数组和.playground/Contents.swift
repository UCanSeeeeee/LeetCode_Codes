func maxSubArray(_ nums: [Int]) -> Int {
    var sum = 0
    var arraysum = nums[0]
    for num in nums {
        if sum > 0 {
            sum += num
        }
            else {
            sum = num
        }
        arraysum = max(arraysum, sum)
    }
    return arraysum
    }

maxSubArray([0,1,2])
maxSubArray([3,-1,-2,2,-1,3])
