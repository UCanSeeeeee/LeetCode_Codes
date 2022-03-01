//1. 奇数可以直接返回，肯定不匹配
//2. 使用一个dic，存储左右括号的对应关系
//3. 遍历字符串
//4. 如果是左括号（即是dic中的key），那么入栈
//5. 如果是右括号，查看其与栈顶元素是否匹配
//6. 栈空或不匹配，直接返回false
//7. 匹配，栈顶元素出栈，继续遍历
//最后返回，栈是否为空，栈空才true


func isValid(_ s: String) -> Bool {
    guard s.count % 2 == 0 else {
        return false
    }
    let map:[Character:Character] = ["(":")",
                                     "[":"]",
                                     "{":"}"]
    var stack = [Character]()
    for char in s {
        if map[char] != nil  {
            stack.append(char)
        }else {
            if stack.isEmpty {
                return false
            }else if map[stack.last!] != char {
                return false
            }else {
                stack.popLast()
            }
        }
    }
    
    return stack.isEmpty

}
