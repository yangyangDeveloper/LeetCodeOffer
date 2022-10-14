//
//  So13.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/12.
//

import Foundation
class So13 {
    func movingCount(_ m: Int, _ n: Int, _ k: Int) -> Int {
        var visited = [[Bool]].init(repeating: [Bool].init(repeating: false, count:n ), count: m)
        return dfs(0, 0, m, n, k, &visited)
    }
    
    func dfs(_ i: Int, _ j: Int, _ m: Int, _ n: Int, _ k: Int, _ visited: inout [[Bool]]) -> Int {
        if i < 0 || i >= m || j < 0 || j >= n {
            return 0
        }
        if i/10 + i%10 + j/10 + j%10 > k {
            return 0
        }
        if visited[i][j] == true {
            return 0
        }
        visited[i][j] = true
       print("666")
        return  dfs(i + 1, j, m, n, k, &visited) + dfs(i - 1, j, m, n, k, &visited) +  dfs(i, j + 1, m, n, k, &visited) + dfs(i, j - 1, m, n, k, &visited) + 1
    }
    
    func movingCount2(_ m: Int, _ n: Int) -> Int {
        var ans = 0
        for i  in 0 ..< m {
            for j in 0 ..< n {
                ans += 1
            }
        }
        return ans
    }

}
