//
//  ViewController.swift
//  Tic Tac Toe
//
//  Created by Siddharth Rajan on 6/23/17.
//  Copyright © 2017 CodeOfSid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player1name = "Player 1"
    var player2name = "Player 2"
    
    var namesEntered = 0
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var enterNameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func submitPressed(_ sender: AnyObject) {
        
        if nameTextField.text == "" && namesEntered < 2 {
            if namesEntered == 0 {
                enterNameLabel.text = "Enter Player 2's Name (O):"
            }
            else if namesEntered == 1 {
                enterNameLabel.text = "Press START!"
            }
            namesEntered += 1
        }
        
        else if nameTextField.text != "" && namesEntered < 2 {
            if namesEntered == 0 {
                player1name = nameTextField.text!
                nameTextField.text = ""
                enterNameLabel.text = "Enter Player 2's Name (O):"
            }
            else if namesEntered == 1 {
                player2name = nameTextField.text!
                nameTextField.text = ""
                enterNameLabel.text = "Press START!"
            }
            namesEntered += 1
        }
        
    }
    
    @IBAction func startPressed(_ sender: AnyObject) {
        
        // [1] Create a new "GamePage" instance.
        let storyboard = UIStoryboard(name: "GamePage", bundle: nil)
        
        // [2] Create an instance of the storyboard's initial view controller.
        let controller = storyboard.instantiateViewController(withIdentifier: "GamePage") as! ViewController2

        controller.Player1 = player1name
        controller.Player2 = player2name
        
        // [3] Display the new view controller.
        present(controller, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

