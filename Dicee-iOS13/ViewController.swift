//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Modified by Mahmoud Shabana on 5/29/2020.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference a UI element
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    @IBOutlet weak var diceImageView3: UIImageView!
    @IBOutlet weak var textLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLbl.isHidden = true

        //WHO          WHAT   VALUE
    //  diceImageView1.alpha = 0.5
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // When 'Roll' button is pressed, This code block will run.
        // An array to store our 6 dice images
        // Second square bracket is the index of the value set to diceImageView1.image from the array.
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        let diceOne = Int.random(in: 0...5)
        let diceTwo = Int.random(in: 0...5)
        let diceThree = Int.random(in: 0...5)
        
        diceImageView1.image = diceArray[diceOne]
        diceImageView2.image = diceArray[diceTwo]
        diceImageView3.image = diceArray[diceThree]
        
        if (diceOne == diceTwo && diceTwo == diceThree) {
            textLbl.text = "Matching Pair!"
            textLbl.isHidden = false
        } else if (diceOne != diceTwo) && (diceTwo != diceThree) && (diceOne != diceThree) {
            if diceOne == 3 || diceOne == 4 || diceOne == 5 {
                if diceTwo == 3 || diceTwo == 4 || diceTwo == 5 {
                    if diceThree == 3 || diceThree == 4 || diceThree == 5 {
                        textLbl.text = "Lucky Winner!"
                        textLbl.isHidden = false
                    }
                }
            }
        } else {
            textLbl.isHidden = true;
        }
        
        //textLbl.isHidden = true
    }
}

