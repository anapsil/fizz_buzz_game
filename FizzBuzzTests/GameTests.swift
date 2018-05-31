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
        let _ = game.play(move: .number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        let _ = game.play(move: .number)
        let _ = game.play(move: .number)
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfFizzMoveIsRight() {
        game.score = 2
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertTrue(result)
    }
    
    func testIfFizzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: .fizz)
        let result = response.right
        XCTAssertFalse(result)
    }
    
    func testIfBuzzMoveIsRight() {
        game.score = 4
        let response = game.play(move: .buzz)
        let result = response.right
        XCTAssertTrue(result)
    }
    
    func testIfBuzzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: .buzz)
        let result = response.right
        XCTAssertFalse(result)
    }
    
    func testIfFizzBuzzMoveIsRight() {
        game.score = 14
        let response = game.play(move: .fizzbuzz)
        let result = response.right
        XCTAssertTrue(result)
    }
    
    func testIfFizzBuzzMoveIsWrong() {
        game.score = 1
        let response = game.play(move: .fizzbuzz)
        let result = response.right
        XCTAssertFalse(result)
    }
    
    func testIfNumberMoveIsRight() {
        game.score = 1
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertTrue(result)
    }
    
    func testIfNumberMoveIsWrong() {
        game.score = 2
        let response = game.play(move: .number)
        let result = response.right
        XCTAssertFalse(result)
    }
    
    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let _ = game.play(move: .fizz)
        XCTAssertEqual(game.score, 1)
    }
    
    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: .number)
        XCTAssertNotNil(response.score)
    }
}
