/* 感觉 好麻烦 🤢🤢🤮
func longestPalindrome(_ s: String) -> String {
    if s.count < 2 {
        return s
    }
    let answer = Array(s)
    let array = s.map({ String.init($0)})
    var maxlen = 1
    var left = 0 , right = 0
    for i in 0 ..< array.count {
        let len1 = maxLength(array: array, left: i, right: i)
        let len2 = maxLength(array: array, left: i, right: i + 1)
        if len1 > maxlen {
            maxlen = len1
            left = i
            right = i
        }
        if len2 > maxlen {
            maxlen = len2
            left = i
            right = i + 1
        }
    }
    return String(answer[(left - (maxlen - 1)/2)...(right + (maxlen - 1)/2)])

}

func maxLength(array: [String], left: Int, right:Int) -> Int {
            var l = left
            var r = right
            while l >= 0 && r < array.count && array[l] == array[r] {
                l -= 1
                r += 1
            }
            return r - l - 1
}

longestPalindrome("abccba")

*/

// 感觉简单多了🤮

    func longestPalindrome(_ s: String) -> String {
        // 中心扩展法
        let cArray = Array(s)
        var center = [0, 0]
        var maxLen = 0
        for i in 0..<(cArray.count - 1) {
            let len1 = maxLength(array:cArray, fromCenter:[i, i])
            let len2 = maxLength(array:cArray, fromCenter:[i, i + 1])
            if len1 > maxLen { maxLen = len1; center = [i, i] }
            if len2 > maxLen { maxLen = len2; center = [i, i + 1] }
        }
        return String(cArray[(center[0] - (maxLen - 1)/2)...(center[1] + (maxLen - 1)/2)])
    }

    func maxLength(array:[Character], fromCenter:[Int]) -> Int {
        var left = fromCenter[0]
        var right = fromCenter[1]
        while left >= 0 && right < array.count && array[left] == array[right] {
            left -= 1; right += 1
        }
        return right - left - 1
    }

longestPalindrome("abccba")
