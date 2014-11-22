//
//  TodoEmptyTests.swift
//  TodoApp
//
//  Created by Yuto Matsukubo on 2014/11/22.
//
//

import XCTest

class TodoEmptyTests: TodoTests {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetFirstTodoEmpty() {
        XCTAssertNil(todo.first())
    }
    
    func testGetLastTodoEmpty() {
        XCTAssertNil(todo.last())
    }
    
    func testGetAllTodoEmpty() {
        XCTAssertEqual(todo.all(), [])
    }
    
    func testNumberOfTodo() {
        XCTAssertEqual(todo.length(), 0)
    }
    
    func testAddTodo() {
        todo.add("do something")
        XCTAssertEqual(todo.length(), 1)
    }
    
    func testRemoveFirst() {
        XCTAssertNil(todo.removeFirst())
        XCTAssertEqual(todo.length(), 0)
    }
    
    func testRemoveLast() {
        XCTAssertNil(todo.removeLast())
        XCTAssertEqual(todo.length(), 0)
    }
    
    func testRemoveAll() {
        todo.removeAll()
        XCTAssertEqual(todo.length(), 0)
    }
    
    func testReplacePosition() {
        todo.replacePosition(0, index2: 1)
        XCTAssertEqual(todo.all(), [])
    }
}
