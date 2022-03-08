class Solution {
func longestValidParentheses(_ s: String) -> Int {
    let arr = Array(s)
    var maxCount = 0
    var stack = [Int]()
    stack.append(-1)
    for i in 0..<arr.count{
        if arr[i] == "(" {
            stack.append(i)
        }else{
            stack.removeLast()
            if stack.isEmpty {
                stack.append(i)
            }else {
                maxCount = max(maxCount , i - stack.last!)
            }
        }
    }
    return maxCount
}
}
