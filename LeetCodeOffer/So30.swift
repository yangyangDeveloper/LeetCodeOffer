//
//  So30.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/9.
//

// 剑指 Offer 30. 包含min函数的栈
class So30 {
    var s1 = [Int]()
    var s2 = [Int]()
    init() {
        
    }
    
    func push(_ x: Int) {
        s1.append(x)
        if s2.count == 0 {
           s2.append(x)
        }
        else {
            if s2.last! >= x {
                s2.append(x)
            }
        }
    }
    
    func pop() {
        if s1.last == s2.last {
            s1.removeLast()
            s2.removeLast()
        } else {
            s1.removeLast()
        }
    }
    
    func top() -> Int {
        guard s1.count > 0 else {
            return 0
        }
        return s1.last!
    }
    
    func min() -> Int {
        guard s2.count > 0 else {
            return 0
        }
        return s2.last!
    }
}

/*
 
 var testStack: Stack = Stack<Int>()
 testStack.push(element: 1)
 testStack.push(element: 3)
 testStack.push(element: 5)

 testStack.pop()
 testStack.pop()
 testStack.count
 */

//  mutating 关键字修饰方法是为了能在该方法中修改 struct 或是 enum 的变量
//public struct Stack<T> {
//    private var elements = [T]()
//    public init() {}
//     
//    public mutating func pop() -> T? {
//        return self.elements.popLast()
//    }
// 
//    public mutating func push(element: T){
//        self.elements.append(element)
//    }
// 
//    public func peek() -> T? {
//        return self.elements.last
//    }
// 
//    public func isEmpty() -> Bool {
//        return self.elements.isEmpty
//    }
// 
//    public var count: Int {
//        return self.elements.count
//    }
//}
//
// 

