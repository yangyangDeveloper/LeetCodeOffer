//
//  So50.swift
//  DayCode
//
//  Created by zhangyangyang on 2022/9/2.
//

// 剑指 Offer 50. 第一个只出现一次的字符
// 哈希算法
class So50 {
    func firstUniqChar(_ s: String) -> Character {
        if s.count == 0 {
            return " "
        }
        let a:Character = "a"
        let a_value = a.asciiValue!
        var array = Array(repeating:0, count:26)
        
        for char in s {
            let temp = Int(char.asciiValue! - a_value)
            array[temp] += 1
        }
        
        for char in s {
            let temp = Int(char.asciiValue! - a_value)
            if array[temp] == 1 {
                return char
            }
        }
        return " "
    }
}
