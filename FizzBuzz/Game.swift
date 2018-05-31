//
//  Game.swift
//  FizzBuzz
//
//  Created by Ana Paula da Silva on 30/05/18.
//  Copyright © 2018 Ana Paula da Silva. All rights reserved.
//

import Foundation

class Game {
    let brain: Brain
    var score: Int
    
    init() {
        brain = Brain()
        score = 0
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        let result = brain.check(number: score + 1)
        
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }
}
