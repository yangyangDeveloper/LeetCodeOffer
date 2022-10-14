//
//  So46.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/8.
//

import Foundation

class So46 {
    func translateNum(_ num: Int) -> Int {
        var numstr = String(num)
        var len = numstr.count
        var dp = [Int](repeating: 0, count: len + 1)
        dp[0] = 1
        dp[1] = 1
        for i in 2...len {
            
            print(i)
//            let subIndex = n.index(str.startIndex, offsetBy:12)
//
////            let start = numstr.index(numstr.endIndex, offsetBy: i - 2)
////            let end = numstr.index(numstr.endIndex, offsetBy: i)
//            let sub = numstr.substring(with: NSRange.ini)
//            if let subvalue = Int(sub) {
//                // 10 到 25
//                if subvalue > 9 && subvalue < 26 {
//                    dp[i] = dp[i - 1] + dp[i - 2]
//                } else {
//                    dp[i] = dp[i - 1]
//                }
           // }
        }
        return 0
        //return dp[len - 1]
    }
}
