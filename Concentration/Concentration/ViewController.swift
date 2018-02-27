//
//  ViewController.swift
//  Concentration
//
//  Created by TAMUR on 27/02/2018.
//  Copyright © 2018 taimoor.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: LABELS
    @IBOutlet weak var flipCountLabel: UILabel!
    
    var flipCount = 0 {
        didSet {
            flipCountLabel.text = "Flip Counts \(flipCount)"
        }
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        
        flipCard(withEmoji: "👻", on: sender)
    }
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipCount += 1
        flipCard(withEmoji: "🎃", on: sender)
    }
    func flipCard(withEmoji emoji: String, on button: UIButton){
        
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
        }
        else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }
    
}

