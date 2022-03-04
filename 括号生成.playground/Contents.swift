class Solution {
    var ans = [String]()

    func generateParenthesis(_ n: Int) -> [String] {
        coding(left: n, right: n, result: "")
        return ans
    }
    
    func coding(left:Int,right:Int,result:String){
        if right > 0 {
            if left > 0 {
                coding(left: left - 1, right: right, result: result + "(")
            }
            if left < right {
                coding(left: left, right: right - 1, result: result + ")")
            }
        }else{
            ans.append(result)
        }

    }
}
