//
//  So31.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/9.
//

import Foundation

class So31 {
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        var s1: Stack = Stack<Int>()
        var j = 0
        for i in pushed {
            s1.push(i)
            while !s1.isEmpty() && s1.peek() == popped[j] {
                s1.pop()
                j += 1
            }
        }
        
        return s1.isEmpty()
    }
}


public struct Stack<T> {
    private var elements = [T]()
    
    public mutating func push(_ element: T) {
        self.elements.append(element)
    }
    
    public mutating func pop() -> T? {
        return self.elements.popLast()
    }
    
    public func isEmpty() -> Bool {
        return self.elements.isEmpty
    }
    public var count: Int {
        return self.elements.count
    }
    
    public func peek() -> T? {
        return self.elements.last
    }
}
