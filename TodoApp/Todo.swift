//
//  Todo.swift
//  TodoApp
//
//  Created by Yuto Matsukubo on 2014/11/22.
//
//

import Foundation

class Todo {
    var remarks: [String]
    
    init() {
        remarks = []
    }
    
    func length() -> Int {
        return remarks.count;
    }

    func add(remark: String) -> Void {
        remarks.append(remark)
    }
    
    func first() -> String? {
        return remarks.first
    }
    
    func last() -> String? {
        return remarks.last
    }
    
    func removeFirst() -> String? {
        return remarks.count > 0 ? remarks.removeAtIndex(0) : nil
    }
    
    func removeLast() -> String? {
        return remarks.count > 0 ? remarks.removeLast() : nil
    }
    
    func all() -> [String] {
        return remarks
    }
    
    func removeAll() -> Void {
        remarks.removeAll(keepCapacity: false)
    }
    
    func replacePosition(index1: UInt, index2: UInt) {
        let index1 = Int(index1)
        let index2 = Int(index2)
        if remarks.count <= index1 || remarks.count <= index2 {
            return
        }
        
        var remark1 = remarks[index1]
        var remark2 = remarks[index2]
        remarks[index2] = remark1
        remarks[index1] = remark2
    }
}