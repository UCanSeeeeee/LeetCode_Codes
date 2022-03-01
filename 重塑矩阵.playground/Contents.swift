func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
    guard mat.count * mat[0].count == r * c else {
        return mat
    }
    var result = [[Int]]()
    var temp = [Int]()
    for array in mat {
        for i in array {
            temp.append(i)
            if temp.count == c {
                result.append(temp)
                temp.removeAll()
            }
        }
    }
    return result
}

matrixReshape([[1,2],[3,4]], 1, 4)
