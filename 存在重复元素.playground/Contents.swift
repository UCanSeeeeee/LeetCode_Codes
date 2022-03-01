//func containsDuplicate(_ nums: [Int]) -> Bool {
//    for i in 0...(nums.count-1){
//        for x in i...(nums.count-1){
//            if (nums[i]-nums[x]==0)&&(x != i){
//                return true
//            }else{
//
//            }
//        }
//    }
//    return false
//    }
//containsDuplicate([1,2])
//
//func containsDuplicate(_ nums: [Int]) -> Bool {
//    var set = Set<Int>()
//    for i in nums {
//        if set.contains(i){
//            return true
//        }else {
//            set.insert(i)
//        }
//    }
//    return false
//}
//containsDuplicate([1])

func containsDuplicate(_ nums: [Int]) -> Bool {
    var hash = [Int:Int]()
    for i in nums {
        if hash[i] == nil{
            hash[i]=1
        }else{
            return true
        }

    }
           return false
}
containsDuplicate([1,2,2])


