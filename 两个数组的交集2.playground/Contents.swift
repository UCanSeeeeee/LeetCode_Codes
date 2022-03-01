// 错误了 ⬇️
//func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//    var nums3 = [Int]()
//    var nums4 = nums2
//
//    for i in 0 ..< nums1.count {
//        for j in 0 ..< nums4.count {
//            if nums1[i] == nums4[j] {
//                nums3.append(nums1[i])
//                nums4.remove(at: j)
//                continue }
//        }
//    }
//return nums3
//}
//
//intersect([1,2,3,4,5,6], [1,2,3])
//
//

/* The first1⃣️ way to solve problems⬇️
 
func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var dict = [Int:Int]()
    var newnums = [Int]()
    for i in nums1 {
        if let sum = dict[i] {
            dict[i] = sum + 1
        }else{
            dict[i] = 1 }
    }
    for i in nums2 {
        if let sum = dict[i] {
            if sum > 0 {
            newnums.append(i)
            dict[i] = sum - 1
        }
    }
}
return newnums
}

intersect([1,2,3,4,5,5], [2,3,4])
intersect([], [])
*/

// The second2⃣️ way to solve problems⬇️

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var dict = [Int:Int]()
    var newnums = [Int]()
    for i in nums1 {
        if dict[i] != nil {
            dict[i]! += 1
        }else{
            dict[i] = 1 }
    }
    for i in nums2 {
        if dict[i] != nil {
            if dict[i]! > 0 {
            newnums.append(i)
                dict[i]! -= 1
        }
    }
}
return newnums
}

intersect([1,2,3,4,5], [2,3,4])
intersect([], [])
