//
//  ViewController.swift
//  Udemy
//
//  Created by Kavin HS on 04/12/17.
//  Copyright © 2017 Kavin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad() 
        
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButton(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        
        UIView.transition(with: diceImageView1, duration: 1.5, options: [.curveEaseInOut, .transitionFlipFromTop], animations: {
        }, completion: {_ in})

        UIView.transition(with: diceImageView2, duration: 1.5, options: [.curveEaseInOut, .transitionFlipFromTop], animations: {
        }, completion: {_ in})
        
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

