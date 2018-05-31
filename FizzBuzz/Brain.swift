//
//  Brain.swift
//  FizzBuzz
//
//  Created by Ana Paula da Silva on 30/05/18.
//  Copyright © 2018 Ana Paula da Silva. All rights reserved.
//

import Foundation

class Brain {
    
    private func isDivisibleBy(divisor: Int, number: Int) -> Bool {
        return number % divisor == 0
    }
    
    func isDivisibleByThree(number: Int) -> Bool {
        return isDivisibleBy(divisor: 3, number: number)
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
       return isDivisibleBy(divisor: 5, number: number)
    }
    
    func isDivisibleByFifteen(number: Int) -> Bool {
       return isDivisibleBy(divisor: 15, number: number)
    }
    
    func check(number: Int) -> Move {
        if isDivisibleByFifteen(number: number) {
            return .fizzbuzz
        } else if isDivisibleByThree(number: number) {
            return .fizz
        } else if isDivisibleByFive(number: number){
            return .buzz
        } else {
            return .number
        }
    }
}
