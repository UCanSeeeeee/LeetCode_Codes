//func maxProfit(_ prices: [Int]) -> Int {
//  if prices.count <= 1 {
//    //！ 返回不合理数据
//    return 0
//  }
//  //！前面扫描过的 最大利润
//  var maxNumber = 0
//  //！前面扫描过的最低价格
//  var per = prices[0]
//
//  for i in 1..<prices.count {
//    //！ 如果当前买入时机比之前的小，那么就在当前买入。
//    if prices[i] < per {
//      per =  prices[i]
//    } else {
//      //! 当前 i 天 的股价比 之前最低股价要高，我们尝试卖出，得出利润 并与之前的最大利润对比
//      maxNumber = max(maxNumber,  prices[i]-per)
//    }
//
//  }
//  return maxNumber
//
//}
//
//maxProfit([2,7,1,3,4])

// 双指针
func maxProfit(_ prices: [Int]) -> Int {
    if prices.count <= 1 {
        return 0
    }
    var maxnumber = 0
    var x = prices[0]
    
    for i in 1..<prices.count {
        if prices[i] < x {
            x = prices[i]
        } else {
            maxnumber = max(maxnumber,prices[i] - x)
        }
    }
    return maxnumber

}

maxProfit([2,7,1,3,4])
