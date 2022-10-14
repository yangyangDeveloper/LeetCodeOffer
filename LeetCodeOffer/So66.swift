//
//  So66.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/10.
//

import Foundation

// 剑指 Offer 66. 构建乘积数组
class So66 {
    // [1,2,3,4,5]
    
    // 抛去3  1 * 2   4 * 5
    func constructArr(_ a: [Int]) -> [Int] {
        var res = [Int](repeating: 0, count: a.count)
        
        // left记录左边的乘机
        var leftA = [Int](repeating: 0, count: a.count)
        var rightA = [Int](repeating: 0, count: a.count)
        
        // 下标为0的左边所有元素乘集
        leftA[0] = 1
        
        // 下表为a.count - 1 右边所有元素的乘机
        rightA[a.count - 1] = 1
        
        for i in 1..<a.count {
            leftA[i] = leftA[i - 1] * a[i - 1]
        }
        
        for j in (0 ..< a.count - 1 ).reversed() {
            rightA[j] = rightA[j + 1] * a[j + 1]
        }
        
        for k in 0 ..< a.count {
            res[k] = leftA[k] * rightA[k]
        }
            
        return res
    }
}
