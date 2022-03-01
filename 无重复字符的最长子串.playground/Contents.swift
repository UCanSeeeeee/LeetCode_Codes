/* 滑动窗口
func lengthOfLongestSubstring(_ s: String) -> Int {
    guard s != "" else {
        return 0
    }
    var workingStr = String()
    var maxStr = String()
    for char in s {
        while workingStr.contains(char) {
            workingStr.remove(at: workingStr.startIndex)
        }
        workingStr.append(char)
        if workingStr.count > maxStr.count {
            maxStr = workingStr
        }
    }
    return maxStr.count
}

lengthOfLongestSubstring("abca")
*/

// 优化：
// 1.去掉while循环，直接找到第一个char的index，然后截取新的子字符串；
// 2.maxStr变量改为maxCount，不需要每次保存maxStr；

func lengthOfLongestSubstring(_ s: String) -> Int {
    if(s == ""){
        return 0
    }
    var maxCount = 0
    var curStr = String()
    for char in s {
        if let index = curStr.firstIndex(of: char) {
            let nextIndex = curStr.index(index, offsetBy: 1)
            curStr = String(curStr[nextIndex...])
        }
        curStr.append(char)
        if(curStr.count > maxCount) {
            maxCount = curStr.count
        }
    }
    return maxCount
}

lengthOfLongestSubstring("abca")
