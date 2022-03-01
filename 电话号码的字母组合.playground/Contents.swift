// 这个方法也太笨了 暂时没有别的解答 -。-
func letterCombinations(_ digits: String) -> [String] {
    guard digits != "" else { return [] }
    let dic : [Character:[Character]] = [
        "2" : Array("abc"),
        "3" : Array("def"),
        "4" : Array("ghi"),
        "5" : Array("jkl"),
        "6" : Array("mno"),
        "7" : Array("pqrs"),
        "8" : Array("tuv"),
        "9" : Array("wxyz")
    ]
    var res = [String]()
    res.append("")
    
    for num in digits {
        let arr : [Character] = dic[num]!
        var temp = [String]()
        for i in res {
            for str in arr {
                temp.append(i + String(str))
            }
        }
        res = temp

    }
      return res
}

letterCombinations("45")
