//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Bennett Lee on 2/13/23.
//

// The most important value add for automation testing is to catch "regressions". Regression is a new bug for an existing feature.

import XCTest

final class CalculatorTests: XCTestCase {
    var calculator: Calculator!

    // Executed once per test case (start)
    override func setUp() {
        print("\(#function)")
        calculator = Calculator()
    }

    // Executed once per test case (end)
    override func tearDown() {

    }

    // Validate that we can add two numbers
    func testSum(){

        // Setup -> Prepare the environment ready for test
        // Unit Test -> Initalize variables, assign default values
        // UI -> Go to a specific screen
        // let calulator = Calculator()

        // Execute -> Perform the method
        // Unit Test -> Calling / invoking a method
        // UI Test -> Click on a button
        let result = calculator.sum(x: 10, y: 2)

        // Assert -> Validate that the expected result matches the actual result
        // Unit Test -> Examine the output of a function
        // UI Test -> Examine the contents of a label
        XCTAssertEqual(result, 12)
    }

    func testSubtract(){
//        let calculator = Calculator()

        let result = calculator.subtract(x: 10, y: 2)

        XCTAssertEqual(result, 8)
    }

}





















//override func setUpWithError() throws {
//    // Put setup code here. This method is called before the invocation of each test method in the class.
//}
//
//override func tearDownWithError() throws {
//    // Put teardown code here. This method is called after the invocation of each test method in the class.
//}
//
//func testExample() throws {
//    // This is an example of a functional test case.
//    // Use XCTAssert and related functions to verify your tests produce the correct results.
//    // Any test you write for XCTest can be annotated as throws and async.
//    // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//    // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//}
//
//func testPerformanceExample() throws {
//    // This is an example of a performance test case.
//    measure {
//        // Put the code you want to measure the time of here.
//    }
//}
