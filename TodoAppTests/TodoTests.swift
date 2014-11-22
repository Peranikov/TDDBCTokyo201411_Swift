//
//  TodoTests.swift
//  TodoApp
//
//  Created by Yuto Matsukubo on 2014/11/22.
//
//

import XCTest
import TodoApp

class TodoTests: XCTestCase {
    var todo: Todo!
    
    override func setUp() {
        super.setUp()
        
        todo = Todo()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}
