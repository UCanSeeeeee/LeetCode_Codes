func removeDuplicates(_ nums: inout [Int]) -> Int {
    if nums.count == 0 {
                return 0
            }
    var x = 0
    for i in 0...nums.count-1 {
        if nums[i] != nums[x] {
           x += 1
           nums[x] = nums[i]
        }
    }
    return x+1
    }

var l = [0,0]
removeDuplicates(&l)
