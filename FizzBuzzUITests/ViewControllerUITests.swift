//
//  ViewControllerUITests.swift
//  FizzBuzzUITests
//
//  Created by Ana Paula da Silva on 30/05/18.
//  Copyright © 2018 Ana Paula da Silva. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testTapNumberButtonIncrementsScore() {
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "1")
    }
    
    func testTapNumberButtonTwiceIncrementsScoreTo2() {
        let numberButton = app.buttons["numberButton"]
        
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapFizzButtonIncrementsScoreTo3() {
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
    
    func testTapBuzzButtonIncrementsScoreTo5() {
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        numberButton.tap()
        buzzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "5")
    }
    
    func testTapFizzBuzzButtonIncrementsScoreTo15() {
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        let buzzButton = app.buttons["buzzButton"]
        let fizzBuzzButton = app.buttons["fizzBuzzButton"]
        
        numberButton.tap() //1
        numberButton.tap() //2
        fizzButton.tap()   //3
        numberButton.tap() //4
        buzzButton.tap()   //5
        fizzButton.tap()   //6
        numberButton.tap() //7
        numberButton.tap() //8
        fizzButton.tap()   //9
        buzzButton.tap()   //10
        numberButton.tap() //11
        fizzButton.tap()   //12
        numberButton.tap() //13
        numberButton.tap() //14
        fizzBuzzButton.tap() //15
        
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "15")
    }
    
}
