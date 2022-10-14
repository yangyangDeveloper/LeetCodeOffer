//
//  So12.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/12.
//

import Foundation
class So12 {
    func exist(_ board: [[Character]], _ word: String) -> Bool {
        var chars = Array(word)
        var visited = [[Bool]].init(repeating: [Bool].init(repeating: false, count:board[0].count), count: board.count)
        for i  in 0 ..< board.count {
            for j in 0 ..< board[0].count {
                if dfs(i, j, 0, board, chars, &visited) {
                    return true
                }
            }
        }
        return false
    }
    
    func dfs(_ i:Int, _ j: Int, _ start: Int, _  board: [[Character]], _ chars: [Character], _ visited: inout [[Bool]]) -> Bool {
        
        // 递归出口：超出边界、当前值不同
        if i < 0 || i >= board.count || j < 0 || j >= board[0].count {
            return false
        }
        
        if visited[i][j] {
            return false
        }
        
        if chars[start] != board[i][j] {
             return false
        }
    
        if start == chars.count - 1 {
            return true
        }
        
        visited[i][j] == true

        let ans = dfs(i + 1, j, start + 1, board, chars, &visited)
        || dfs(i - 1, j, start + 1, board, chars, &visited)
        || dfs(i, j + 1, start + 1, board, chars, &visited)
        || dfs(i, j - 1, start + 1, board, chars, &visited)
        
        visited[i][j] == false
        
        return ans
    }
}
