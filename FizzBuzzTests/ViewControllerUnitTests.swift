//
//  ViewControllerUnitTests.swift
//  FizzBuzzTests
//
//  Created by Ana Paula da Silva on 30/05/18.
//  Copyright © 2018 Ana Paula da Silva. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    var viewController : ViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        
        let _ = viewController.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testMoveIncrementsScore() {
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementsScore() {
        viewController.play(move: .number)
        viewController.play(move: .number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move: .fizz)
        XCTAssertEqual(viewController.gameScore, 3)
    }
    
    func testBuzzIncrementScore() {
        viewController.game?.score = 4
        viewController.play(move: .buzz)
        XCTAssertEqual(viewController.gameScore, 5)
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 14
        viewController.play(move: .fizzbuzz)
        XCTAssertEqual(viewController.gameScore, 15)
    }
    
    func testOnWrongMoveScoreNotIncremented() {
        viewController.play(move: Move.fizz)
        XCTAssertEqual(viewController.gameScore, 0)
    }
}








