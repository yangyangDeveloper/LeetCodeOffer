//
//  So35.swift
//  剑指Offer
//
//  Created by zhangyangyang on 2022/9/11.
//

import Foundation


class So35 {
    var hashMap = [Node:Node]()
    func copyRandomList(_ head: Node?) -> Node? {
        guard let head = head else {
            return nil
        }
        
        if hashMap[head] == nil {
            let node = Node(head.val)
            hashMap[head] = node
            node.next = copyRandomList(head.next)
            node.random = copyRandomList(head.random)
        }
        
        return hashMap[head]
    }
    
//    //  不用递归
//    func copyRandomList2(_ head: Node?) -> Node? {
//        if head == nil {
//            return head
//        }
//        var cur = head
//
//        while cur != nil {
//            hashMap[cur!] = Node(cur!.val)
//            cur = cur?.next
//        }
//        cur = head
//
//        for (e, value) in hashMap {
//            value.next = e.next
//            value.random = e.random
//        }
//
//        return hashMap[head!]
//    }
}

class Node {
    var val: Int
    var next: Node?
    var random: Node?
    init(_ val: Int) { self.val = val; self.next = nil; self.random = nil }
    
}

// swift 需要实现协议
extension Node: Hashable, Equatable {
    public func hash(into hasher: inout Hasher) {
        // 用于唯一标识
        hasher.combine(val)
        hasher.combine(ObjectIdentifier(self))
    }
    public static func ==(lhs: Node, rhs: Node) -> Bool {
        return lhs === rhs
    }
}


