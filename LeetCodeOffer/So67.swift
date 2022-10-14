//
//  So67.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/12.
//

// 剑指 Offer 67. 把字符串转换成整数
class So67 {
    func strToInt(_ str: String) -> Int {
        var str = str
        
        // 去除空格
        str = str.trimmingCharacters(in: .whitespaces)
        
        if str.count == 0 {
            return 0
        }
        
        // 判断第一位
        var first = str.first!
        
        guard first == "+" || first == "-" || first.isNumber else {
            return 0
        }
        
        var res = String()
        
        for (index, value) in str.enumerated() {
            if index == 0 {
                
                if value == "+" || value == "-" || value.isNumber {
                    res.append(value)
                }
            } else {
                if value.isNumber {
                    res.append(value)
                }else {   // 如果不是数字，要中断， 后面的不再判断
                    break
                }
            }
        }
        
        // 如果结果只有 + 和  -
        if res == "+" || res == "-" {
            return 0
        }
        
        // 不能越界
        var resInt = Int32(res)
        guard resInt != nil  else {
            return res.contains("-") ? Int(Int32.min) : Int(Int32.max)
        }
        
        return Int(resInt!)
    }
    
    
    func strToInt2(_ str: String) -> Int {
        var resInt = Int32(str)
        var t = Int64(str)
        guard resInt != nil  else {
            return str.contains("-") ? Int(Int32.min) : Int(Int32.min)
        }
        return Int(resInt!)
    }
}
