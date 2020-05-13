//
//  FlipCardVC.swift
//  autoLayoutDemo
//
//  Created by Supanut Laddayam on 13/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class FlipCardVC: UIViewController {

    var flipCount = 0
    var arrChoice: Array<String> = ["👻", "🎃", "😈", "☠️"]
    
    @IBOutlet var carButtons: [UIButton]!
    
    @IBOutlet weak var ghostBtn: UIButton!
    @IBOutlet weak var flipCountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5606686473, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControl.State.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
        flipCountLabel.text = "Flip: \(flipCount)"
    }
    
    @IBAction func flipCardTap(_ sender: UIButton) {
        flipCount += 1
        var cardNumber = carButtons.index(of: sender)
        if let idxCard = cardNumber {
            switch idxCard {
            case 0:
                 flipCard(withEmoji: arrChoice[idxCard], on: sender)
            case 1:
                flipCard(withEmoji: arrChoice[idxCard], on: sender)
            case 2:
                flipCard(withEmoji: arrChoice[idxCard], on: sender)
            case 3:
                flipCard(withEmoji: arrChoice[idxCard], on: sender)
            default: break
                
            }
        }
    }
    
    
    

}
