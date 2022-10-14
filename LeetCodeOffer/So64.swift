//
//  So64.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/9.
//

// 剑指 Offer 64. 求1+2+…+n
class So64 {
    // if A && B  如果A是false 那么 B 就不会执行
    // if A || B  如果A是ture  那么 B 就不会执行
    
    var res = 0
    func sumNums(_ n: Int) -> Int {
        // 若n>1 才会执行 && 后面的语句 断开递归
        var x = n > 1 && sumNums(n - 1) > 0 
        res += n
        return res
    }
    
    func sumNums2(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }
        res += sumNums2(n - 1)
        return n
    }
}
