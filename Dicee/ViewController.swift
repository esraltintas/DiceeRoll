//
//  ViewController.swift
//  Dicee
//
//  Created by Esra Altıntaş on 12.05.2018.
//  Copyright © 2018 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArr = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
  
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImage()

    }
    
    @IBAction func cheat(_ sender: UIButton) {
        diceImageView1.image = UIImage(named: diceArr[5])
        diceImageView2.image = UIImage(named: diceArr[5])
    }
    
    func updateDiceImage () {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArr[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArr[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImage()
    }
    
}

