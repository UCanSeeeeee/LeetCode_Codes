func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
    let array = (nums1 + nums2).sorted(by:<)
    var mid:Double
    if array.count%2 == 0 {
        mid = Double((array[array.count/2-1] + array[array.count/2]))/2
    }else{
        mid = Double(array[array.count/2])
    }
    return mid
    }

findMedianSortedArrays([1,2,3,4,5], [5])
