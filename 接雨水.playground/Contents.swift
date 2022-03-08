//func trap(_ height: [Int]) -> Int {
//    // 双指针
//    var l = 0 ,r = height.count - 1, sum = 0
//    var maxL = 0 , maxR = 0
//    while l < r {
//        if height[l] < height[r] {
//            if height[l] >= maxL {
//                maxL = height[l]
//            } else {
//                sum += maxL - height[l]
//            }
//            l += 1
//        } else {
//            if height[r] >= maxR {
//                maxR = height[r]
//            } else {
//                sum += maxR - height[r]
//            }
//            r -= 1
//        }
//    }
//    return sum
//
//}
//
//trap([0,1,0,2,1,0,1,3,2,1,2,1])

//单调栈 track 改进时间3.5
class Solution {
func trap(_ height: [Int]) -> Int {
    var track = [Int]()
    var result = 0
    var h = 0 , l = 0
    for i in 0..<height.count {
        while !track.isEmpty && height[i] > height[track.last!] {
            let index = track.removeLast()
            if track.isEmpty {
                break
            }
            h = min(height[i],height[track.last!]) - height[index]
            l = i - track.last! - 1
            result += h * l
        }
        track.append(i)
    }
    return result
}
}
