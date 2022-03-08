
class Solution {
func wordBreak(_ s: String, _ wordDict: [String]) -> Bool {
    var result = [Bool](repeating: false, count: s.count + 1)
    result[0] = true
    
    for i in 1...s.count {
        for w in wordDict {
            if w.count > i {
                    continue
                }
            if s.prefix(i).suffix(w.count) == w && result[i - w.count] {
                result[i] = true
                break
            }
            
        }
    }
    return result[s.count]
}
}

// 动态规划
