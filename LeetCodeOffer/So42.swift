//
//  So42.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/7.
//

// 剑指 Offer 42. 连续子数组的最大和
class So42 {
    func maxSubArray(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        var arr = nums
        var res = arr[0]
        for i in 1..<arr.count {
            if arr[i - 1] > 0 {
                arr[i] += arr[i - 1]
            }
            res = max(res, arr[i])
        }
        return res
    }
}
