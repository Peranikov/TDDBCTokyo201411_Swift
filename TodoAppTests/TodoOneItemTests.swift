//
//  TodoOneItemTests.swift
//  TodoApp
//
//  Created by Yuto Matsukubo on 2014/11/22.
//
//

import XCTest

class TodoOneItemTests: TodoTests {
    let firstRemark = "first item"

    override func setUp() {
        super.setUp()
        todo.add(firstRemark)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testReplacePosition() {
        todo.replacePosition(0, index2: 0)
        XCTAssertEqual(todo.all(), [firstRemark])
    }
}
