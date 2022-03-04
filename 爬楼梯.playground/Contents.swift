func climbStairs(_ n: Int) -> Int {
    if n <= 2 {
        return n
    }
    var a = 1 , b = 2 , cur = 0
    
    for _ in 3...n {
        cur = a + b
        a = b
        b = cur
    }
    return b
}
