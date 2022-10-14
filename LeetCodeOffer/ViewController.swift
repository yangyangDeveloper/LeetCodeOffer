//
//  ViewController.swift
//  LeetCodeOffer
//
//  Created by zhangyangyang on 2022/10/14.
//

import UIKit

class ListNode: Hashable {
    var val: Int
    var next: ListNode?
    init(_ val: Int) { self.val = val; self.next = nil }
    var hashValue: Int {
        return val.hashValue ^ next.hashValue
    }
    static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.val == rhs.val && lhs.next == rhs.next
    }
}

class TreeNode {
    var val: Int
    var left:TreeNode?
    var right:TreeNode?
    init(_ val:Int) {
        self.val = val
    }
}



class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let n = 25
//        let t = So46().translateNum(n)
        
//        let s = "abcdefg"
//        let t = So58().reverseLeftWords(s, 2)
        
//        var t1 = [1,2,3,4]
//
//        for i in (0...4).reversed() {
//              print(i)
//        }
        
        
        //let myCookie = cookies[3][6]
        
        
        // Do any additional setup after loading the view.
        
        //test58()
        //test15()
        //test68()
        //test38()
        
//        var someProtocol = [
//            "one" : 1,
//            "two" : 2
//        ]
//        for (e, value) in someProtocol {
//           print("e==\(e)")
//           print("value=\(value)")
//
//        }
        
       // print(someProtocol.keys)
        
        //test56()
        
        //test13()
        //test45()
        test67()
    }

    func test56() {
        let nums = [3,4,4,5]
        let t = So56().singleNumbers(nums)
        
    }
    func test13() {
        let m = 2, n = 2
        let t = So13().movingCount2(m, n)
      
    }
    
    func test58() {
      
        let str1 = "ab good   example"
        // 除去前后空格
        let res = So58().reverseWords2(str1)
        print(res)
    }
    
    func test45() {
        let n = [3,30,34,5,9]
        // 快排之前转化为str  ["3" "30" "34" "5" "9]
        // 快排之后应该是 ["30" "3" "34" "5" "9"] 才是最小的
        let res = So45().minNumber(n)
        
    }
    
    
    func test15() {
        let n = 11
        let t  = So15().hammingWeight(n)
     
        
    }
    
    func test66() {
        let n = [1,2,3,4,5]
        let t = So66().constructArr(n)
        
    }
    
    func test38() {
        let s = "abb"
        let arr = So38().permutation(s)
        
    }
    
    func test67() {
        let s = "2147483648"
        let t = So67().strToInt(s)
        
    }

}



extension String {
    subscript(i: Int) -> String {
        return String(self[index(startIndex, offsetBy: i)])
    }
}


extension String {
    func test() {
        
        let str = "swift字符串真求难用"
        
        
        print("---- 正序遍历 ----")
        var i = 0
        for ch in str {
            print("\(i): \(ch)")
            i += 1
        }

        print("---- 逆序遍历 ----")
        var j = str.count
        for ch in str.reversed() {
            j -= 1
            print("\(j): \(ch)")
        }
        
    
        print("---- 基于索引的正序遍历 ----")
        for i in 0..<str.count {
            let ch: Character = str[str.index(str.startIndex, offsetBy: i)]
            print("\(i): \(ch)")
        }

        print("---- 基于索引的逆序遍历 ----")
        //for i in stride(from: str.count - 1, to: -1, by: -1) {
        for i in stride(from: str.count - 1, through: 0, by: -1) {
            let ch: Character = str[str.index(str.startIndex, offsetBy: i)]
            print("\(i): \(ch)")
        }
        
        print("---- 基于EnumeratedSequence的遍历 ----")
        for (i, ch) in str.enumerated() {
            print("\(i): \(ch)")
        }
        
    }
    
    // https://www.jianshu.com/p/dcf6b52aa420
    // str 操作   offsetBy 头是0  尾是-1
    func test1() {
       
        var str = "swift字符串真求难用"
        
//        let start = str.index(str.startIndex, offsetBy: 0)
//        print(str[start])
        
//        // 获取首字符
//        print(str[str.startIndex])
//
        // 删除 i
//        str.remove(at: str.index(str.startIndex, offsetBy: 2))
//        print(str)
        
        // 删除最后一个字符
        //str.removeLast()
        // 等价
//        str.remove(at: str.index(str.endIndex, offsetBy: -1))
//        print(str)
        
        // 从后面往前删除 删除 “难”一个字  -2 理解为倒数第二个字
//        str.remove(at: str.index(str.endIndex, offsetBy: -2))
//        print(str)
        
        // 删除头尾指定位数
//        str.removeFirst(2)
//        str.removeLast(2)
//        print(str)
        
        
        
        // range 截取
//        let index3 = str.index(str.startIndex, offsetBy: 3)
//        let index4 = str.index(str.startIndex, offsetBy: 5)
//        let str5 = str[index3...index4]
//        print(str5)
        
        //头部街区
        let str2 = str.prefix(2);
        print(str2)
        
        //尾部截取
        let str3 = str.suffix(3)
        print(str3)
        
    }
}

