//
//  So45.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/12.
//

import Foundation
class So45 {
    
    func minNumber2(_ nums: [Int]) -> String {
        var strArr = [String]()
        for s in nums {
            strArr.append(String(s))
        }
        
        //var strArr = nums.map{ String($0) }
        // 调用系统的快排
        strArr.sort(by: {$0 + $1 < $1 + $0})
        return strArr.joined(separator: "")
    }
    
    // 自己写快排
    func minNumber(_ nums: [Int]) -> String {
        var strArr = nums.map{ String($0) }
        quickSort(&strArr, 0, strArr.count - 1)
        return strArr.joined(separator: "")
    }
    
    func quickSort(_ arr: inout [String], _ start: Int, _ end: Int) {
        if start < end {
            let p = helper(&arr, start, end)
            quickSort(&arr, start, p - 1)
            quickSort(&arr, p + 1, end)
        }
    }
    
    func helper(_ arr: inout [String], _ start: Int, _ end: Int) -> Int {
        let p = arr[end]
        var i = start
        for j in start..<end {
            let str1 = arr[j] + p
            let str2 = p + arr[j]
            let num1 = Int(str1)!
            let num2 = Int(str2)!
            if num1 < num2 {
                arr.swapAt(i, j)
                i += 1
            }
        }
        arr.swapAt(i, end)
        return i
    }
}
