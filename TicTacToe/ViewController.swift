//
//  ViewController.swift
//  TicTacToe
//
//  Created by student on 2/4/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var WhosTurnLabel: UILabel!
    @IBOutlet var NewGameBtn: UIButton!
    @IBOutlet var OneBtn: UIButton!
    @IBOutlet var TwoBtn: UIButton!
    @IBOutlet var ThreeBtn: UIButton!
    @IBOutlet var FourBtn: UIButton!
    @IBOutlet var FiveBtn: UIButton!
    @IBOutlet var SixBtn: UIButton!
    @IBOutlet var SevenBtn: UIButton!
    @IBOutlet var EightBtn: UIButton!
    @IBOutlet var NineBtn: UIButton!
    var Position = ""
    var Array: [String] = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    var WhosTurn = 1
    let PlayerOne = "X"
    let PlayerTwo = "O"
    let PlayerOneTurn = "Player 1 Make Your Move"
    let PlayerTwoTurn = "Player 2 Make Your Move"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func OneBtn(_ sender: UIButton) {
        sender.isUserInteractionEnabled = false
        Position = "One"
        TakeTurn(sender: sender, position: Position)
    }
    
    @IBAction func TwoBtn(_ sender: UIButton) {
        sender.isUserInteractionEnabled = false
        Position = "Two"
        TakeTurn(sender: sender, position: Position)
    }
    
    @IBAction func ThreeBtn(_ sender: UIButton) {
        sender.isUserInteractionEnabled = false
        Position = "Three"
        TakeTurn(sender: sender, position: Position)
    }
    
    @IBAction func FourBtn(_ sender: UIButton) {
        sender.isUserInteractionEnabled = false
        Position = "Four"
        TakeTurn(sender: sender, position: Position)
    }
    
    @IBAction func FiveBtn(_ sender: UIButton) {
        sender.isUserInteractionEnabled = false
        Position = "Five"
        TakeTurn(sender: sender, position: Position)
    }
    
    @IBAction func SixBtn(_ sender: UIButton) {
        sender.isUserInteractionEnabled = false
        Position = "Six"
        TakeTurn(sender: sender, position: Position)
    }
    
    @IBAction func SevenBtn(_ sender: UIButton) {
        sender.isUserInteractionEnabled = false
        Position = "Seven"
        TakeTurn(sender: sender, position: Position)
    }
    
    @IBAction func EightBtn(_ sender: UIButton) {
        sender.isUserInteractionEnabled = false
        Position = "Eight"
        TakeTurn(sender: sender, position: Position)
    }
    
    @IBAction func NineBtn(_ sender: UIButton) {
        sender.isUserInteractionEnabled = false
        Position = "Nine"
        TakeTurn(sender: sender, position: Position)
    }

    @IBAction func NewGameBtn(_ sender: UIButton) {
        ResetGame()
    }

    func TakeTurn(sender: UIButton, position: String) {
        if WhosTurn == 1 {
            sender.setTitle(PlayerOne, for: .normal)
            WhosTurnLabel.text = PlayerTwoTurn
            CheckIfWon(whosTurn: WhosTurn, position: Position)
            WhosTurn += 1
        } else {
            sender.setTitle(PlayerTwo, for: .normal)
            WhosTurnLabel.text = PlayerOneTurn
            CheckIfWon(whosTurn: WhosTurn, position: Position)
            WhosTurn -= 1
        }
    }
    
    func CheckIfWon(whosTurn: Int, position: String) {
        for (index, value) in Array.enumerated() {
                if (value == position) {
                    Array[index] = "\(whosTurn)"
                }
            }
        if Array[0] == Array[1] && Array[1] == Array[2] {
            WhosTurnLabel.text = "Player \(whosTurn) Wins"
            NewGameBtn.isHidden = false
        }
        else if Array[3] == Array[4] && Array[4] == Array[5] {
            WhosTurnLabel.text = "Player \(whosTurn) Wins"
            NewGameBtn.isHidden = false
        }
        else if Array[6] == Array[7] && Array[7] == Array[8] {
            WhosTurnLabel.text = "Player \(whosTurn) Wins"
            NewGameBtn.isHidden = false
        }
        else if Array[0] == Array[3] && Array[3] == Array[6] {
            WhosTurnLabel.text = "Player \(whosTurn) Wins"
            NewGameBtn.isHidden = false
        }
        else if Array[1] == Array[4] && Array[4] == Array[7] {
            WhosTurnLabel.text = "Player \(whosTurn) Wins"
            NewGameBtn.isHidden = false
        }
        else if Array[2] == Array[5] && Array[5] == Array[8] {
            WhosTurnLabel.text = "Player \(whosTurn) Wins"
            NewGameBtn.isHidden = false
        }
        else if Array[0] == Array[4] && Array[4] == Array[8] {
            WhosTurnLabel.text = "Player \(whosTurn) Wins"
            NewGameBtn.isHidden = false
        }
        else if Array[2] == Array[4] && Array[4] == Array[6] {
            WhosTurnLabel.text = "Player \(whosTurn) Wins"
            NewGameBtn.isHidden = false
        }
        else if Array.allSatisfy({ $0 == "1" || $0 == "2" }) {
            WhosTurnLabel.text = "It Is A Draw"
            NewGameBtn.isHidden = false
        }
    }
    
    func ResetGame() {
        OneBtn.setTitle("One", for: .normal)
        TwoBtn.setTitle("Two", for: .normal)
        ThreeBtn.setTitle("Three", for: .normal)
        FourBtn.setTitle("Four", for: .normal)
        FiveBtn.setTitle("Five", for: .normal)
        SixBtn.setTitle("Six", for: .normal)
        SevenBtn.setTitle("Seven", for: .normal)
        EightBtn.setTitle("Eight", for: .normal)
        NineBtn.setTitle("Nine", for: .normal)
        
        OneBtn.isUserInteractionEnabled = true
        TwoBtn.isUserInteractionEnabled = true
        ThreeBtn.isUserInteractionEnabled = true
        FourBtn.isUserInteractionEnabled = true
        FiveBtn.isUserInteractionEnabled = true
        SixBtn.isUserInteractionEnabled = true
        SevenBtn.isUserInteractionEnabled = true
        EightBtn.isUserInteractionEnabled = true
        NineBtn.isUserInteractionEnabled = true
        
        WhosTurn = 1
        WhosTurnLabel.text = "Player 1 Make Your Move"
        Array = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
        NewGameBtn.isHidden = true
    }
}
