//
//  So49.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/12.
//

// 剑指 Offer 49. 丑数
class So49 {
    // 三个指针从第一个位置开始求最小值，然后最小值对应的指针往后移动
    // 丑数的性质，一个丑数总是可以写成另一个较小的丑数和质因数2、3或5中的一个的乘积,
    func nthUglyNumber(_ n: Int) -> Int {
        if n == 1 {
            return 1
        }
        var dp = [Int](repeating: 0, count: n + 1)
        
        dp[1] = 1
        var p2 = 1, p3 = 1, p5 = 1
        // {1*2, 2*2 ..}
        // {1*3, 2*3 ..}
        // {1*5, 2*5 ..}
        for i in 2...n {
            dp[i] = min(min(dp[p2] * 2, dp[p3] * 3), dp[p5] * 5)
            if dp[i] == dp[p2] * 2 {
                p2 += 1
            }
            if dp[i] == dp[p3] * 3 {
                p3 += 1
            }
            if dp[i] == dp[p5] * 5 {
                p5 += 1
            }
        }
        return dp[n]
    }
}
