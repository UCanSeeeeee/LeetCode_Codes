func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
    var rest = numBottles
    var sum = numBottles
    while rest >= numExchange {
        sum += rest/numExchange
        rest = rest/numExchange + rest%numExchange
    }
    return sum
}
numWaterBottles(3, 3)
