//// 这个方法也太笨了 暂时没有别的解答 -。-
//func letterCombinations(_ digits: String) -> [String] {
//    guard digits != "" else { return [] }
//    let dic : [Character:[Character]] = [
//        "2" : Array("abc"),
//        "3" : Array("def"),
//        "4" : Array("ghi"),
//        "5" : Array("jkl"),
//        "6" : Array("mno"),
//        "7" : Array("pqrs"),
//        "8" : Array("tuv"),
//        "9" : Array("wxyz")
//    ]
//    var res = [String]()
//    res.append("")
//
//    for num in digits {
//        let arr : [Character] = dic[num]!
//        var temp = [String]()
//        for i in res {
//            for str in arr {
//                temp.append(i + String(str))
//            }
//        }
//        res = temp
//
//    }
//      return res
//}
//
//letterCombinations("45")
func letterCombinations(_ digits: String) -> [String] {
    guard digits != "" else {
        return []
    }
    
    let map:[Character:[Character]] = ["2":["a","b","c"],
                                       "3":["d","e","f"],
                                       "4":["g","h","i"],
                                       "5":["j","k","l"],
                                       "6":["m","n","o"],
                                       "7":["p","q","r","s"],
                                       "8":["t","u","v"],
                                       "9":["w","x","y","z"]]
    var x = [String]()
    x.append("")
    for char in digits {
        let arr = map[char]!
        var currentArr = [String]()
        for current in x {
        for i in arr {
            currentArr.append(current + String(i))
        }
        }
        x = currentArr
    }
    return x
}
