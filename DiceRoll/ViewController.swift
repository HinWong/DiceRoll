//
//  ViewController.swift
//  DiceRoll
//
//  Created by Hin Wong on 1/24/20.
//  Copyright © 2020 Hin Wong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sumLabel: UILabel!
    @IBOutlet weak var shakeLabel: UILabel!
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "table")!)
    }

//    @IBAction func buttonTapped(_ sender: UIButton) {
//
//        let firstNumber = arc4random_uniform(6) + 1
//        let secondNumber = arc4random_uniform(6) + 1
//
//        sumlabel.text = "The sum is: \(firstNumber + secondNumber)"
//        leftImageView.image = UIImage(named: "Dice\(firstNumber)")
//        rightImageView.image = UIImage(named: "Dice\(secondNumber)")
//
//        
//    }
    
    //Shake motion
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        if motion == .motionShake {
            
            //Generates random number from 1 to 6
            let firstNumber = arc4random_uniform(6) + 1
            let secondNumber = arc4random_uniform(6) + 1
            
            // Adds the first and second number and updates the sum label
            sumLabel.text = "Sum: \(firstNumber + secondNumber)"
            
            // Pulls image and populates the image views
            leftImageView.image = UIImage(named: "Dice\(firstNumber)")
            rightImageView.image = UIImage(named: "Dice\(secondNumber)")
        }
    }
    
    
}

