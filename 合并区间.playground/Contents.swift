//func merge(_ intervals: [[Int]]) -> [[Int]] {
//    var intervals = intervals.sorted(by: { $0[0] < $1[0] })
//    var result = [[Int]]()
//    result.append(intervals[0])
//    for i in 1..<intervals.count{
//        let temp = intervals[i]
//        var current = result.removeLast()
//        if  temp[0] <= current[1]{
//            current[1] = max(current[1], temp[1])
//            result.append(current)
//        }else {
//            result.append(current)
//            result.append(temp)
//        }
//    }
//return result
//}
func merge(_ intervals: [[Int]]) -> [[Int]] {
    let intervals = intervals.sorted(by: { $0[0] < $1[0] })
    
    var result = [[Int]]()
    for i in intervals{
        if result.isEmpty {
            result.append(i)
        } else if result.last![1] >= i[0]{
            let current = result.removeLast()
            result.append( [current[0] , max(current[1], i[1])] )
        } else {
            result.append(i)
        }
    }
return result
}

merge([[1,3],[2,6],[8,10],[15,18]])
