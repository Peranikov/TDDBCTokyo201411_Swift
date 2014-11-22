//
//  TodoMultipleItemsTests.swift
//  TodoApp
//
//  Created by Yuto Matsukubo on 2014/11/22.
//
//

import XCTest

class TodoMultipleItemsTests: TodoTests {
    
    let firstRemark = "first item"
    let lastRemark = "last item"

    override func setUp() {
        super.setUp()
        todo.add(firstRemark)
        todo.add(lastRemark)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetLastTodo2itemExist() {
        XCTAssertNotNil(todo.last())
        XCTAssertEqual(todo.last()!, lastRemark)
    }
    
    func testGetFirstTodo2itemExist() {
        XCTAssertNotNil(todo.first())
        XCTAssertEqual(todo.first()!, firstRemark)
    }
    
    func testGetAllTodo() {
        XCTAssertEqual(todo.all(), [firstRemark, lastRemark])
    }
    
    func testRemoveFirst() {
        let removed = todo.removeFirst()!
        XCTAssertNotNil(removed)
        XCTAssertEqual(removed, firstRemark)
    }
    
    func testRemoveLast() {
        let removed = todo.removeLast()!
        XCTAssertNotNil(removed)
        XCTAssertEqual(removed, lastRemark)
    }
    
    func testRemoveAll() {
        todo.removeAll()
        XCTAssertEqual(todo.length(), 0)
    }
    
    func testReplacePosition() {
        todo.replacePosition(0, index2: 1)
        XCTAssertEqual(todo.all(), [lastRemark, firstRemark])
    }
    
    func testReplacePositionNotChange() {
        todo.replacePosition(1, index2: 0)
        XCTAssertEqual(todo.all(), [lastRemark, firstRemark])
    }
    
    func testReplacePositionOutOfIndex1() {
        todo.replacePosition(2, index2: 0)
        XCTAssertEqual(todo.all(), [firstRemark, lastRemark])
    }
    
    func testReplacePositionOutOfIndex2() {
        todo.replacePosition(0, index2: 2)
        XCTAssertEqual(todo.all(), [firstRemark, lastRemark])
    }
}
