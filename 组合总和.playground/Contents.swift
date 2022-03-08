var result = [[Int]]()
var temp = [Int]()

func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    findresult(candidates.sorted(), target, 0)

    return result
}

func findresult(_ candidates: [Int], _ target: Int, _ n: Int) {
    if target == 0 {
        result.append(temp)
        return
    }
    for i in n..<candidates.count {
        if candidates[i] > target {
            break
        }
        temp.append(candidates[i])
        findresult(candidates, target - candidates[i], i)
        temp.removeLast()
    }
    
}
