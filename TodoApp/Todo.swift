//
//  Todo.swift
//  TodoApp
//
//  Created by Yuto Matsukubo on 2014/11/22.
//
//

import Foundation

public class Todo {
    var remarks: [String]
    
    public init() {
        remarks = []
    }
    
    public func length() -> Int {
        return remarks.count;
    }
    
    public func add(remark: String) -> Void {
        remarks.append(remark)
    }
    
    public func first() -> String? {
        return remarks.first
    }
    
    public func last() -> String? {
        return remarks.last
    }
    
    public func removeFirst() -> String? {
        return remarks.count > 0 ? remarks.removeAtIndex(0) : nil
    }
    
    public func removeLast() -> String? {
        return remarks.count > 0 ? remarks.removeLast() : nil
    }
    
    public func all() -> [String] {
        return remarks
    }
    
    public func removeAll() -> Void {
        remarks.removeAll(keepCapacity: false)
    }
    
    public func replacePosition(index1: UInt, index2: UInt) {
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