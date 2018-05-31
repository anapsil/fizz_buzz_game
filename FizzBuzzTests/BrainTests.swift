//
//  BrainTests.swift
//  FizzBuzzTests
//
//  Created by Ana Paula da Silva on 30/05/18.
//  Copyright © 2018 Ana Paula da Silva. All rights reserved.
//

import XCTest

@testable import FizzBuzz
class BrainTests: XCTestCase {
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testIsDivisibleByThree() {
        XCTAssertTrue(brain.isDivisibleByThree(number: 3))
    }
    
    func testIsNotDivisibleByThree() {
        XCTAssertFalse(brain.isDivisibleByThree(number: 1))
    }
    
    func testIsDivisibleByFive() {
        XCTAssertTrue(brain.isDivisibleByFive(number: 5))
    }
    
    func testIsNotDivisibleByFive() {
        XCTAssertFalse(brain.isDivisibleByFive(number: 1))
    }
    
    func testIsDivisibleByFifteen() {
        XCTAssertTrue(brain.isDivisibleByFifteen(number: 15))
    }
    
    func testIsNotDivisibleByFifteen() {
        XCTAssertFalse(brain.isDivisibleByFifteen(number: 1))
    }
    
    func testSayFizz() {
        XCTAssertEqual(brain.check(number: 3), Move.fizz)
    }
    
    func testSayBuzz() {
        XCTAssertEqual(brain.check(number: 5), Move.buzz)
    }
    
    func testSayFizzBuzz() {
        XCTAssertEqual(brain.check(number: 15), Move.fizzbuzz)
    }
    
    func testSayNumber() {
        XCTAssertEqual(brain.check(number: 1), Move.number)
    }
}
