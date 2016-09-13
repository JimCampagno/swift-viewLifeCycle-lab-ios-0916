//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftTopView: UIView!
    @IBOutlet weak var leftMiddleView: UIView!
    @IBOutlet weak var leftBottomView: UIView!
    @IBOutlet weak var middleView: UIView!
    @IBOutlet weak var rightTopView: UIView!
    @IBOutlet weak var rightMiddleView: UIView!
    @IBOutlet weak var rightBottomView: UIView!
    
    @IBOutlet weak var firstRollLabel: UILabel!
    @IBOutlet weak var secondRollLabel: UILabel!
    @IBOutlet weak var thirdRollLabel: UILabel!
    @IBOutlet weak var fourthRollLabel: UILabel!
    @IBOutlet weak var fifthRollLabel: UILabel!
    @IBOutlet weak var sixthRollLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupAllTheViews()
    }
    
    func setupAllTheViews() {
        
        hideTheDiceRollViews()
        
        firstRollLabel.hidden = true
        secondRollLabel.hidden = true
        thirdRollLabel.hidden = true
        fourthRollLabel.hidden = true
        fifthRollLabel.hidden = true
        sixthRollLabel.hidden = true
        
    }
    
    func hideTheDiceRollViews() {
        
        leftTopView.hidden = true
        leftMiddleView.hidden = true
        leftBottomView.hidden = true
        middleView.hidden = true
        rightTopView.hidden = true
        rightMiddleView.hidden = true
        rightBottomView.hidden = true
        
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    

    @IBAction func dieButtonTapped(sender: AnyObject) {
        
        let randomNumber = randomDiceRoll()
        diceIsRolledWithNumber(randomNumber)
        
    }
    
    func diceIsRolledWithNumber(number: Int) {
        
        hideTheDiceRollViews()
        updateLabelWithRoll(number)
        
        print("The number rolled is \(number)")
    
        switch number {
        case 1:
            simulateARollOfOne()
        case 2:
            simulateARollOfTwo()
        case 3:
            simulateARollOfThree()
        case 4:
            simulateARollOfFour()
        case 5:
            simulateARollOfFive()
        case 6:
            simulateARollOfSix()
        default:
            print("Not a valid roll.")
        }
    }
    
    func simulateARollOfOne() {
        middleView.hidden = false
    }
    
    func simulateARollOfTwo() {
        leftTopView.hidden = false
        rightBottomView.hidden = false
    }
    
    func simulateARollOfThree() {
        leftTopView.hidden = false
        middleView.hidden = false
        rightBottomView.hidden = false
    }
    
    func simulateARollOfFour() {
        leftTopView.hidden = false
        leftBottomView.hidden = false
        rightTopView.hidden = false
        rightBottomView.hidden = false
    }
    
    func simulateARollOfFive() {
        simulateARollOfFour()
        simulateARollOfOne()
    }
    
    func simulateARollOfSix() {
        leftTopView.hidden = false
        leftBottomView.hidden = false
        leftMiddleView.hidden = false
        rightTopView.hidden = false
        rightBottomView.hidden = false
        rightMiddleView.hidden = false
    }
    
    
    func updateLabelWithRoll(roll: Int) {

        let diceScore = String(roll)
        
        if firstRollLabel.hidden {
            firstRollLabel.text = diceScore
            firstRollLabel.hidden = false
        } else if secondRollLabel.hidden {
            secondRollLabel.text = diceScore
            secondRollLabel.hidden = false
        } else if thirdRollLabel.hidden {
            thirdRollLabel.text = diceScore
            thirdRollLabel.hidden = false
        } else if fourthRollLabel.hidden {
            fourthRollLabel.text = diceScore
            fourthRollLabel.hidden = false
        } else if fifthRollLabel.hidden {
            fifthRollLabel.text = diceScore
            fifthRollLabel.hidden = false
        } else if sixthRollLabel.hidden {
            sixthRollLabel.text = diceScore
            sixthRollLabel.hidden = false
        }
        
    }
   
    
    
    
}
