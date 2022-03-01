func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
// 法官的入度为n-1
    var array = [Int](repeating: 0, count: n+1)
    for i in trust {
        // 计算入度
        array[i[0]] -= 1
        array[i[1]] += 1
    }
    for i in 1..<array.count {
        if array[i] == n-1 {return i}
    }
    return -1
    }

findJudge(3,[[1,3],[2,3]])
findJudge(3,[[1,3],[2,3],[3,1]])
