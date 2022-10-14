//
//  So38.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/10.
//


// 剑指 Offer 38. 字符串的排列
class So38 {
    // abc
   
    func permutation(_ s: String) -> [String] {
        var c = [Character](s), res = [String]()
        
        
        func dfs(_ x: Int) {
            print(x)
            //print("x == \(x)")
            if x == c.count - 1 {
                //print(String(c))
                res.append(String(c))
                return
            }
            
            var set = Set<Character>()
            for i in x..<c.count {
                print("i == \(i)")
                if set.contains(c[i]) {
                    print("牛逼")
                    continue
                }
                set.insert(c[i])
                
                // 当在第二层dfs(1),x = 1,那么i = 1或者 2， 不是交换1和1，要就是交换1和2
                c.swapAt(i, x)
                
                //
                dfs(x + 1)
                //print("6666")
                
                //返回时交换回来，这样保证到达第1层的时候，一直都是abc。这里捋顺一下，开始一直都是abc，那么第一位置总共就3个交换
                //分别是a与a交换，这个就相当于 x = 0, i = 0;
                //     a与b交换            x = 0, i = 1;
                //     a与c交换            x = 0, i = 2;
                
                c.swapAt(x, i)
            }
        }
    
        dfs(0)
        return res
    }
}
