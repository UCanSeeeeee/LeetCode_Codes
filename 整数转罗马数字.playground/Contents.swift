    func intToRoman(_ num: Int) -> String {
        var num = num
        if num == 0 { return "" }
        var m   = [ 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 ]
        var s   = [ "M", "CM",  "D", "CD",  "C", "XC",  "L", "XL",  "X", "IX",  "V", "IV",  "I" ]
             
        var ans = ""
        for (i, v) in m.enumerated() {
            if num / v < 1 {
                continue
            }else{ans += String(repeating: s[i], count: Int(num / v))
                num -= v * Int(num / v)}
        }

        return ans
    }
intToRoman(0)
intToRoman(80)
intToRoman(188)
intToRoman(199)
