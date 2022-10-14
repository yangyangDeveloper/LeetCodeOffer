//
//  So15.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/9.
//

// 剑指 Offer 15. 二进制中1的个数
class So15 {
    func hammingWeight(_ n: Int) -> Int {
        var count = 0
        var temp = n
        
        // 11 二进制是 1 0 1 1
        // 11 左移1位 就是  1 0 1 1 0   也就是22
        // 11 右移1位 就是  1 0 1   也就是  5
        
        
        //  可以从后往前比较
        //  从右往前遍历  右移可以立即为最后一位扔了  那么在扔之前 我们可以统计 他是不是1
        
        //  最开始是 1 0  1  1  从后面往前比较
        //  然后比较 1 0  1  而这个可以通过 右边得到
        //  接着比较 1 0
        //  最后比较 1
        //  1>>1 就是0了 跳出循环
        
        while temp > 0 {
            
            count += (temp & 1 == 1) ? 1 : 0
            // 向右移动1位    1 0 1 1  会变成 1 0 1
            temp >>= 1
        }
        return count
    }
    /*
     1
     1
     
     2
     1 0
     
     5
     1 0 1
     
     11
     1 0 1 1
     
     
     
     */
}
