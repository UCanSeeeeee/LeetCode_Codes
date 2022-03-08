// 栈
class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var aHeights = heights
        aHeights.append(0)
        aHeights.insert(0, at: 0)
        var stack: [Int] = [0]
        var result = 0
        for i in (1..<aHeights.count) {
            while aHeights[i] < aHeights[stack.last!] {
                let index = stack.removeLast()
                result = max(result, aHeights[index] * (i - stack.last! - 1))
            }
            stack.append(i)
        }
        return result
    }
}
