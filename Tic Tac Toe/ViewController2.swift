//
//  ViewController2.swift
//  Tic Tac Toe
//
//  Created by Siddharth Rajan on 6/23/17.
//  Copyright © 2017 CodeOfSid. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    var Player1 = String()                  // Passed from previous view controller
    var Player2 = String()                  // Passed from previous view controller
    var player1score = 0                    // Keep track of player 1 score
    var player2score = 0                    // Keep track of player 2 score
    var first_pick_done = false             // Boolean to see if first player has been decided
    var symbol = ""                         // Will keep track of symbol being used: X or O
    var used_boxes = 0                      // Will keep track of used boxes in grid
    
    
    // Changes symbol being used
    func change_symbol(symbol: String) -> String {
        
        if symbol == "X" {
            return "O"
        }
        else if symbol == "O" {
            return "X"
        }
        return ""
    }
    
    // Checks if there are three in a row of either symbol
    func check_winner() {
        
        // First three check each row
        if one.currentTitle == two.currentTitle && two.currentTitle == three.currentTitle && one.currentTitle == three.currentTitle {
            if one.currentTitle == "X" {
                winnerLabel.text = "\(Player1) wins!"
                player1score += 1
                player1Label.text = "\(Player1): \(player1score)"
            }
            else if one.currentTitle == "O" {
                winnerLabel.text = "\(Player2) wins!"
                player2score += 1
                player2Label.text = "\(Player2): \(player2score)"
            }
        }
        else if four.currentTitle == five.currentTitle && five.currentTitle == six.currentTitle && four.currentTitle == six.currentTitle {
            if four.currentTitle == "X" {
                winnerLabel.text = "\(Player1) wins!"
                player1score += 1
                player1Label.text = "\(Player1): \(player1score)"
            }
            else if four.currentTitle == "O" {
                winnerLabel.text = "\(Player2) wins!"
                player2score += 1
                player2Label.text = "\(Player2): \(player2score)"
            }
        }
        else if seven.currentTitle == eight.currentTitle && eight.currentTitle == nine.currentTitle && seven.currentTitle == nine.currentTitle {
            if seven.currentTitle == "X" {
                winnerLabel.text = "\(Player1) wins!"
                player1score += 1
                player1Label.text = "\(Player1): \(player1score)"
            }
            else if seven.currentTitle == "O" {
                winnerLabel.text = "\(Player2) wins!"
                player2score += 1
                player2Label.text = "\(Player2): \(player2score)"
            }
        }
        // Next three check each column
        else if one.currentTitle == four.currentTitle && four.currentTitle == seven.currentTitle && one.currentTitle == seven.currentTitle {
            if one.currentTitle == "X" {
                winnerLabel.text = "\(Player1) wins!"
                player1score += 1
                player1Label.text = "\(Player1): \(player1score)"
            }
            else if one.currentTitle == "O" {
                winnerLabel.text = "\(Player2) wins!"
                player2score += 1
                player2Label.text = "\(Player2): \(player2score)"
            }
        }
        else if two.currentTitle == five.currentTitle && five.currentTitle == eight.currentTitle && two.currentTitle == eight.currentTitle {
            if two.currentTitle == "X" {
                winnerLabel.text = "\(Player1) wins!"
                player1score += 1
                player1Label.text = "\(Player1): \(player1score)"
            }
            else if two.currentTitle == "O" {
                winnerLabel.text = "\(Player2) wins!"
                player2score += 1
                player2Label.text = "\(Player2): \(player2score)"
            }
        }
        else if three.currentTitle == six.currentTitle && six.currentTitle == nine.currentTitle && three.currentTitle == nine.currentTitle {
            if three.currentTitle == "X" {
                winnerLabel.text = "\(Player1) wins!"
                player1score += 1
                player1Label.text = "\(Player1): \(player1score)"
            }
            else if three.currentTitle == "O" {
                winnerLabel.text = "\(Player2) wins!"
                player2score += 1
                player2Label.text = "\(Player2): \(player2score)"
            }
        }
        // Next two check diagonally
        else if one.currentTitle == five.currentTitle && five.currentTitle == nine.currentTitle && one.currentTitle == nine.currentTitle {
            if one.currentTitle == "X" {
                winnerLabel.text = "\(Player1) wins!"
                player1score += 1
                player1Label.text = "\(Player1): \(player1score)"
            }
            else if one.currentTitle == "O" {
                winnerLabel.text = "\(Player2) wins!"
                player2score += 1
                player2Label.text = "\(Player2): \(player2score)"
            }
        }
        else if three.currentTitle == five.currentTitle && five.currentTitle == seven.currentTitle && three.currentTitle == seven.currentTitle {
            if three.currentTitle == "X" {
                winnerLabel.text = "\(Player1) wins!"
                player1score += 1
                player1Label.text = "\(Player1): \(player1score)"
            }
            else if three.currentTitle == "O" {
                winnerLabel.text = "\(Player2) wins!"
                player2score += 1
                player2Label.text = "\(Player2): \(player2score)"
            }
        }
        // Last one checks for tie
        else if used_boxes == 9 {
            winnerLabel.text = "It's a tie!"
        }
        
    }
    
    // IBOutlets to control text of labels and buttons
    @IBOutlet weak var firstPickLabel: UILabel!
    @IBOutlet weak var player1Label: UILabel!
    @IBOutlet weak var player2Label: UILabel!
    @IBOutlet weak var winnerLabel: UILabel!
    @IBOutlet weak var one: UIButton!
    @IBOutlet weak var two: UIButton!
    @IBOutlet weak var three: UIButton!
    @IBOutlet weak var four: UIButton!
    @IBOutlet weak var five: UIButton!
    @IBOutlet weak var six: UIButton!
    @IBOutlet weak var seven: UIButton!
    @IBOutlet weak var eight: UIButton!
    @IBOutlet weak var nine: UIButton!
    
    // IBAction functions to control actions when buttons are pressed
    
    // Determines who goes first at random
    @IBAction func firstPickPressed(_ sender: AnyObject) {
        
        if first_pick_done == false {
            let random = Int(arc4random_uniform(2))
            if random == 0 {
                firstPickLabel.text = Player1
                symbol = "X"
            }
            else if random == 1 {
                firstPickLabel.text = Player2
                symbol = "O"
            }
            first_pick_done = true
        }
        
    }
    
    // Next nine functions allow button to be pressed and symbol will show
    @IBAction func onePressed(_ sender: AnyObject) {
    
    // if button hasn't been pressed yet
        // if game is not over yet
            // if used_boxes == 0
                // examine first pick and set symbol accordingly
                // set button text to symbol
                // increase used_boxes by 1
            // else
                // call change_symbol
                // set button text to symbol
                // increase used_boxes by 1
        
        // check for winner
        
        if one.currentTitle == "1" {
            if winnerLabel.text == "" {
                if used_boxes == 0 {
                    if firstPickLabel.text == Player1 {
                        symbol = "X"
                        one.setTitle( symbol , for: [] )
                        one.setTitleColor(UIColor.black, for: .normal)
                        used_boxes += 1
                    }
                    else if firstPickLabel.text == Player2 {
                        symbol = "O"
                        one.setTitle( symbol , for: [] )
                        one.setTitleColor(UIColor.red, for: .normal)
                        used_boxes += 1
                    }
                }
                else {
                    symbol = change_symbol(symbol: symbol)
                    if symbol == "X" {
                        one.setTitleColor(UIColor.black, for: .normal)
                    }
                    else if symbol == "O" {
                        one.setTitleColor(UIColor.red, for: .normal)
                    }
                    one.setTitle( symbol , for: [] )
                    used_boxes += 1
                }
                
                check_winner()
            }
        }
    }
    
    @IBAction func twoPressed(_ sender: AnyObject) {
        
        if two.currentTitle == "2" {
            if winnerLabel.text == "" {
                if used_boxes == 0 {
                    if firstPickLabel.text == Player1 {
                        symbol = "X"
                        two.setTitle( symbol , for: [] )
                        two.setTitleColor(UIColor.black, for: .normal)
                        used_boxes += 1
                    }
                    else if firstPickLabel.text == Player2 {
                        symbol = "O"
                        two.setTitle( symbol , for: [] )
                        two.setTitleColor(UIColor.red, for: .normal)
                        used_boxes += 1
                    }
                }
                else {
                    symbol = change_symbol(symbol: symbol)
                    if symbol == "X" {
                        two.setTitleColor(UIColor.black, for: .normal)
                    }
                    else if symbol == "O" {
                        two.setTitleColor(UIColor.red, for: .normal)
                    }
                    two.setTitle( symbol , for: [] )
                    used_boxes += 1
                }
                
                check_winner()
            }
        }
    }
    
    @IBAction func threePressed(_ sender: AnyObject) {
        
        if three.currentTitle == "3" {
            if winnerLabel.text == "" {
                if used_boxes == 0 {
                    if firstPickLabel.text == Player1 {
                        symbol = "X"
                        three.setTitle( symbol , for: [] )
                        three.setTitleColor(UIColor.black, for: .normal)
                        used_boxes += 1
                    }
                    else if firstPickLabel.text == Player2 {
                        symbol = "O"
                        three.setTitle( symbol , for: [] )
                        three.setTitleColor(UIColor.red, for: .normal)
                        used_boxes += 1
                    }
                }
                else {
                    symbol = change_symbol(symbol: symbol)
                    if symbol == "X" {
                        three.setTitleColor(UIColor.black, for: .normal)
                    }
                    else if symbol == "O" {
                        three.setTitleColor(UIColor.red, for: .normal)
                    }
                    three.setTitle( symbol , for: [] )
                    used_boxes += 1
                }
                
                check_winner()
            }
        }
    }
    
    @IBAction func fourPressed(_ sender: AnyObject) {
        
        if four.currentTitle == "4" {
            if winnerLabel.text == "" {
                if used_boxes == 0 {
                    if firstPickLabel.text == Player1 {
                        symbol = "X"
                        four.setTitle( symbol , for: [] )
                        four.setTitleColor(UIColor.black, for: .normal)
                        used_boxes += 1
                    }
                    else if firstPickLabel.text == Player2 {
                        symbol = "O"
                        four.setTitle( symbol , for: [] )
                        four.setTitleColor(UIColor.red, for: .normal)
                        used_boxes += 1
                    }
                }
                else {
                    symbol = change_symbol(symbol: symbol)
                    if symbol == "X" {
                        four.setTitleColor(UIColor.black, for: .normal)
                    }
                    else if symbol == "O" {
                        four.setTitleColor(UIColor.red, for: .normal)
                    }
                    four.setTitle( symbol , for: [] )
                    used_boxes += 1
                }
                
                check_winner()
            }
        }
    }
    
    @IBAction func fivePressed(_ sender: AnyObject) {
        
        if five.currentTitle == "5" {
            if winnerLabel.text == "" {
                if used_boxes == 0 {
                    if firstPickLabel.text == Player1 {
                        symbol = "X"
                        five.setTitle( symbol , for: [] )
                        five.setTitleColor(UIColor.black, for: .normal)
                        used_boxes += 1
                    }
                    else if firstPickLabel.text == Player2 {
                        symbol = "O"
                        five.setTitle( symbol , for: [] )
                        five.setTitleColor(UIColor.red, for: .normal)
                        used_boxes += 1
                    }
                }
                else {
                    symbol = change_symbol(symbol: symbol)
                    if symbol == "X" {
                        five.setTitleColor(UIColor.black, for: .normal)
                    }
                    else if symbol == "O" {
                        five.setTitleColor(UIColor.red, for: .normal)
                    }
                    five.setTitle( symbol , for: [] )
                    used_boxes += 1
                }
                
                check_winner()
            }
        }
    }
    
    @IBAction func sixPressed(_ sender: AnyObject) {
        
        if six.currentTitle == "6" {
            if winnerLabel.text == "" {
                if used_boxes == 0 {
                    if firstPickLabel.text == Player1 {
                        symbol = "X"
                        six.setTitle( symbol , for: [] )
                        six.setTitleColor(UIColor.black, for: .normal)
                        used_boxes += 1
                    }
                    else if firstPickLabel.text == Player2 {
                        symbol = "O"
                        six.setTitle( symbol , for: [] )
                        six.setTitleColor(UIColor.red, for: .normal)
                        used_boxes += 1
                    }
                }
                else {
                    symbol = change_symbol(symbol: symbol)
                    if symbol == "X" {
                        six.setTitleColor(UIColor.black, for: .normal)
                    }
                    else if symbol == "O" {
                        six.setTitleColor(UIColor.red, for: .normal)
                    }
                    six.setTitle( symbol , for: [] )
                    used_boxes += 1
                }
                
                check_winner()
            }
        }
    }
    
    @IBAction func sevenPressed(_ sender: AnyObject) {
        
        if seven.currentTitle == "7" {
            if winnerLabel.text == "" {
                if used_boxes == 0 {
                    if firstPickLabel.text == Player1 {
                        symbol = "X"
                        seven.setTitle( symbol , for: [] )
                        seven.setTitleColor(UIColor.black, for: .normal)
                        used_boxes += 1
                    }
                    else if firstPickLabel.text == Player2 {
                        symbol = "O"
                        seven.setTitle( symbol , for: [] )
                        seven.setTitleColor(UIColor.red, for: .normal)
                        used_boxes += 1
                    }
                }
                else {
                    symbol = change_symbol(symbol: symbol)
                    if symbol == "X" {
                        seven.setTitleColor(UIColor.black, for: .normal)
                    }
                    else if symbol == "O" {
                        seven.setTitleColor(UIColor.red, for: .normal)
                    }
                    seven.setTitle( symbol , for: [] )
                    used_boxes += 1
                }
                
                check_winner()
            }
        }
    }
    
    @IBAction func eightPressed(_ sender: AnyObject) {
        
        if eight.currentTitle == "8" {
            if winnerLabel.text == "" {
                if used_boxes == 0 {
                    if firstPickLabel.text == Player1 {
                        symbol = "X"
                        eight.setTitle( symbol , for: [] )
                        eight.setTitleColor(UIColor.black, for: .normal)
                        used_boxes += 1
                    }
                    else if firstPickLabel.text == Player2 {
                        symbol = "O"
                        eight.setTitle( symbol , for: [] )
                        eight.setTitleColor(UIColor.red, for: .normal)
                        used_boxes += 1
                    }
                }
                else {
                    symbol = change_symbol(symbol: symbol)
                    if symbol == "X" {
                        eight.setTitleColor(UIColor.black, for: .normal)
                    }
                    else if symbol == "O" {
                        eight.setTitleColor(UIColor.red, for: .normal)
                    }
                    eight.setTitle( symbol , for: [] )
                    used_boxes += 1
                }
                
                check_winner()
            }
        }
    }
    
    @IBAction func ninePressed(_ sender: AnyObject) {
        
        if nine.currentTitle == "9" {
            if winnerLabel.text == "" {
                if used_boxes == 0 {
                    if firstPickLabel.text == Player1 {
                        symbol = "X"
                        nine.setTitle( symbol , for: [] )
                        nine.setTitleColor(UIColor.black, for: .normal)
                        used_boxes += 1
                    }
                    else if firstPickLabel.text == Player2 {
                        symbol = "O"
                        nine.setTitle( symbol , for: [] )
                        nine.setTitleColor(UIColor.red, for: .normal)
                        used_boxes += 1
                    }
                }
                else {
                    symbol = change_symbol(symbol: symbol)
                    if symbol == "X" {
                        nine.setTitleColor(UIColor.black, for: .normal)
                    }
                    else if symbol == "O" {
                        nine.setTitleColor(UIColor.red, for: .normal)
                    }
                    nine.setTitle( symbol , for: [] )
                    used_boxes += 1
                }
                
                check_winner()
            }
        }
    }
    
    // Restarts the game but keeps track of score
    @IBAction func restartPressed(_ sender: AnyObject) {
        
        firstPickLabel.text = ""
        first_pick_done = false
        winnerLabel.text = ""
        symbol = ""
        used_boxes = 0
        
        one.setTitle( "1" , for: [] )
        two.setTitle( "2" , for: [] )
        three.setTitle( "3" , for: [] )
        four.setTitle( "4" , for: [] )
        five.setTitle( "5" , for: [] )
        six.setTitle( "6" , for: [] )
        seven.setTitle( "7" , for: [] )
        eight.setTitle( "8" , for: [] )
        nine.setTitle( "9" , for: [] )
        
        
        one.setTitleColor(UIColor.white, for: .normal)
        two.setTitleColor(UIColor.white, for: .normal)
        three.setTitleColor(UIColor.white, for: .normal)
        four.setTitleColor(UIColor.white, for: .normal)
        five.setTitleColor(UIColor.white, for: .normal)
        six.setTitleColor(UIColor.white, for: .normal)
        seven.setTitleColor(UIColor.white, for: .normal)
        eight.setTitleColor(UIColor.white, for: .normal)
        nine.setTitleColor(UIColor.white, for: .normal)
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player1Label.text = "\(Player1): 0"
        player2Label.text = "\(Player2): 0"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
