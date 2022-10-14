//
//  So56.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/11.
//

import Foundation

class So56 {
    
    /*
    相同的数异或为0，不同的异或为1。0和任何数异或等于这个数本身。

    所以，数组里面所有数异或 = 目标两个数异或 。 由于这两个数不同，所以异或结果必然不为0。
     
    假设数组异或的二进制结果为10010，那么说明这两个数从右向左数第2位是不同的

    那么可以根据数组里面所有数的第二位为0或者1将数组划分为2个。

    这样做可以将目标数必然分散在不同的数组中，而且相同的数必然落在同一个数组中。

    这两个数组里面的数各自进行异或，得到的结果就是答案
     
    */
    
    
    func singleNumbers(_ nums: [Int]) -> [Int] {
        // 先用 ^(异或) 算出来 两个出现一次的数字的异或值
        // 1 4 4 6   循环异或 最后是 1和6的异或结果
        // 1 4 4 4 6 循环异或 就不是了 而是 1 4 6 的结果
        var k = 0
        for num in nums {
            k ^= num
        }
        return [k]
        
        // 假设得到的k的二进制结果为10010，那么说明这两个数从右向左数第2位是不同的
        
       
        
        // 需要设置一个分界值用来将 只出现一次的两个值分别放进两个组
        // mask 是一个二进制,且当中只有1位是1, 其余位全是0
        // & 与运算 (只有都为1时结果才是1,否则都为0)
        
        
        // 如果想找到第一位为1 可以通过一个遮罩
        var mask = 1
        while k & mask == 0 {
            print("666")
            mask <<= 1
        }
        
        // 遍历数组使用 &mask 对所有元素进行分组操作,最终可以确定两个只出现一次的值
        
        // 4  0100
        
        // 1  0001
        
        // 4  0100
        
        // 6  0110
        
        // 数组分组 数组1【1】   数组 【  6，4，4 】
        // 在进行疑惑 自然就得到了 1  和  6
        var a = 0, b = 0
        for num in nums {
            if num & mask == 0 {
                a ^= num
            } else {
                b ^= num
            }
        }
        
        return [a, b]

    }
    
    func singleNumber(_ nums: [Int]) -> Int {
        var res = nums
        if nums.count == 0 {
            return -1
        }
        
        var arr = res.sorted()

        var i = 0
        while i < arr.count {
            if arr[i] == arr[i + 1] {
                i += 3
            } else {
                return arr[i]
            }
        }
        return -1
    }
    
}
