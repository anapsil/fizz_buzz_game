//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Ana Paula da Silva on 30/05/18.
//  Copyright © 2018 Ana Paula da Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var mainView: UIView!
    @IBOutlet weak var gameView: UIView!
    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    @IBOutlet weak var buzzButton: UIButton!
    @IBOutlet weak var fizzBuzzButton: UIButton!
    @IBOutlet weak var wrongMoveLabel: UILabel!
    @IBOutlet weak var playAgainButton: UIButton!
    
    let mainColor = UIColor(red: 0/255.0, green: 184/255.0, blue: 169/255.0, alpha: 1.0)
    let gameOverBgColor = UIColor(red: 246/255.0, green: 65/255.0, blue: 108/255.0, alpha: 1.0)
    
    var game: Game?
    var gameScore: Int? {
        didSet {
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Game()
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        switch sender {
        case numberButton:
            play(move: .number)
        case fizzButton:
            play(move: .fizz)
        case buzzButton:
            play(move: .buzz)
        case fizzBuzzButton:
            play(move: .fizzbuzz)
        case playAgainButton:
            restart()
        default:
            print("Invalid selection")
        }
    }
    
    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil")
            return
        }
        
        let response = unwrappedGame.play(move: move)
        
        if response.score == gameScore {
            stop()
        } else {
            gameScore = response.score
        }
    }
    
    func stop() {
        gameView.isHidden = true
        wrongMoveLabel.isHidden = false
        mainView.backgroundColor = gameOverBgColor
    }
    
    func restart() {
        gameView.isHidden = false
        wrongMoveLabel.isHidden = true
        mainView.backgroundColor = mainColor
        gameScore = 0
    }
}

