class Solution {
func permute(_ nums: [Int]) -> [[Int]] {
    var result = [[Int]()]
    var mid: [[Int]]
    var temp: [Int]
    for num in nums{
        mid = result
        result = [[Int]]()
        for i in 0..<mid.count {
            for j in 0...mid[i].count {
                temp = mid[i]
                if j < temp.count {
                    temp.insert(num, at: j)
                }else {
                    temp.append(num)
                }
                result.append(temp)
            }
        }
    }
    return result
}
}
