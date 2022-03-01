
    func isPalindrome(_ x: Int) -> Bool {
    if x<0
        {return false}
    var newn = 0
    var newx = x
        while newx != 0 {
            newn = newn * 10 + newx % 10
            newx /= 10
        }
        return newn == x
    }



isPalindrome(121)
