//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by Ana Paula da Silva on 30/05/18.
//  Copyright © 2018 Ana Paula da Silva. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    let game = Game()

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        let _ = game.play(move: "1")
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        let _ = game.play(move: "1")
        let _ = game.play(move: "2")
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        XCTAssertTrue(game.play(move: "Fizz"))
    }
    
    func testIfFizzMoveIsWrong() {
        game.score = 1
        XCTAssertFalse(game.play(move: "Fizz"))
    }
    
    func testIfBuzzMoveIsRight() {
        game.score = 4
        XCTAssertTrue(game.play(move: "Buzz"))
    }
    
    func testIfBuzzMoveIsWrong() {
        game.score = 1
        XCTAssertFalse(game.play(move: "Buzz"))
    }
    
    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        XCTAssertTrue(game.play(move: "FizzBuzz"))
    }
    
    func testIfFizzBuzzMoveIsWrong() {
        game.score = 1
        XCTAssertFalse(game.play(move: "FizzBuzz"))
    }
    
    func testIfNumberMoveIsRight() {
        game.score = 1
        XCTAssertTrue(game.play(move: "2"))
    }
    
    func testIfNumberMoveIsWrong() {
        game.score = 2
        XCTAssertFalse(game.play(move: "3"))
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let _ = game.play(move: "Fizz")
        XCTAssertEqual(game.score, 1)
    }
}
