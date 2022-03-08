class Solution {
func minDistance(_ word1: String, _ word2: String) -> Int {
    if word1 == word2 {
        return 0
    }
    if word1.isEmpty{
        return word2.count
    }
      if word2.isEmpty{
        return word1.count
    }
    let (len1, len2) = (word1.count, word2.count)
    var dp = [[Int]](repeating: [Int](repeating: 0, count:len2 + 1 ), count: len1 + 1)
    for i in 0..<len2 + 1 {
        dp[0][i] = i
    }
    for i in 0..<len1 + 1 {
        dp[i][0] = i
    }
    
    for i in 1...len1 {
        for j in 1...len2{
            let index1 = word1.index(word1.startIndex, offsetBy: i - 1)
            let index2 = word2.index(word2.startIndex, offsetBy: j - 1)
            if word1[index1] == word2[index2] {
                dp[i][j] = dp[i - 1][j - 1]
            }else {
                dp[i][j] = min(dp[i][j - 1] + 1, dp[i - 1][j] + 1,dp[i - 1][j - 1] + 1)
            }
            
        }
    }
    return dp[len1][len2]
}
}
