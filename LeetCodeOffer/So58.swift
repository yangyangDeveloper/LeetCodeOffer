//
//  So58.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/8.
//

import CoreGraphics


class So58 {
    
    func reverseLeftWords(_ s: String, _ n: Int) -> String {
         if s.count == 0 || n == 0 {
             return ""
         }
         var res = ""
         var arr = Array(s)
         for i in n..<arr.count {
             var temp = arr[i]
             res.append(temp)
         }

         for i in 0..<n {
             var temp = arr[i]
             res.append(temp)
         }

         return res
    }
    
    // 剑指 Offer 58 - I. 翻转单词顺序
    /*
      1、 用空格分割字符串成一个数组
      2、 数组逆序来组装字符串
     
      
     */
    func reverseWords(_ s: String) -> String {
        //  用空格分割字符串成一个数组
        let array = s.split(separator:" ")
        print(array)
        // 根据数组逆序来组装字符串
        let tempStr = array.reversed().joined(separator:" ")
        return tempStr
    }
    
    
    func reverseWords2(_ s: String) -> String {
        //  用空格分割字符串成一个数组
        var str = s
        var s = str.trimmingCharacters(in: .whitespaces)
        var j = s.count - 1
        var i = j
        var res = ""
        while i >= 0 {
            
            while i >= 0, s[i] != " " {
                i -= 1
            }
            print("走一遍")
            let start = s.index(str.startIndex, offsetBy: i+1)
            let end = s.index(str.startIndex, offsetBy: j)
            let temp:String = s[start...end] + " "
            
            res.append(temp)
            
            while i >= 0, s[i] == " " {
                i -= 1
            }
            
            j = i
        }
         
        
        res = res.trimmingCharacters(in: .whitespaces)
        return res
    }
    
    
    // 单纯反转字符串
    func reverseWord( _ array:inout Array<Character>, _ start:Int, _ length:Int) {
        var left = start ,right = length - 1
        while left < right {
            let temp = array[left]
            array[left] = array[right]
            array[right] = temp
            left += 1
            right -= 1
        }
    }
    
}


