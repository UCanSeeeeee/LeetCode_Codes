//func dominantIndex(_ nums: [Int]) -> Int {
//    if nums.count<2 {
//        return 0
//    }
//    let x = nums.sorted()
//    var j = 0
//    for i in nums{
//        if nums[i] == x[x.count-1] {
//            j = i
//        }
//    }
//    if x[x.count-1]/x[x.count-2]<2 {
//        return -1}
//        else{
//            return j}
//    }
//
//dominantIndex([0,6,2])

func dominantIndex(_ nums: [Int]) -> Int {
    let l = nums.count
    var j = 0
    if l == 1 {
        return 0 }
    let x = nums.sorted()

    for i in 0...l-1 {
        if nums[i]==x[l-1] {
            j = i
        }
    }
    if x[l-2] == 0 {
        return j
    }
    if x[l-1] / x[l-2] < 2 && x[l-2] != 0 {
        return -1}
    return j
}
    
    

dominantIndex([0,0,0,0])
