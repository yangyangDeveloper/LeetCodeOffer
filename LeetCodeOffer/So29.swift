//
//  So29.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/8.
//

import Foundation
class So29 {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        if matrix.count == 0 {
            return []
        }
        // 左右边界  每一行里面的
        var left = 0
        var right = matrix[0].count - 1
        
        // 上下边界  第一行
        var top = 0
        var boom = matrix.count - 1
        
        var res = [Int]()
        while 1 > 0 {
            // 从左到右
            for i in left...right {
                res.append(matrix[top][i])
            }
            top += 1
            if top > boom {
                break
            }
            // 从上到下
            for i in top...boom {
                res.append(matrix[i][right])
            }
            right -= 1
            if left > right {
                break
            }
            
            // 从右到左
            for i in (right...left).reversed() {
                res.append(matrix[boom][i])
            }
            boom -= 1
            if top > boom {
                break
            }
            
            // 从下往上
            for i in (boom...top).reversed() {
                res.append(matrix[i][left])
            }
            left += 1
            if left > right {
                break
            }
        }
        return res
    }
}
