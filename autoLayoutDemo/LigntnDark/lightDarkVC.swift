//
//  lightDarkVC.swift
//  autoLayoutDemo
//
//  Created by Supanut Laddayam on 12/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class lightDarkVC: UIViewController {

    @IBOutlet weak var pkLabel: UILabel!
    @IBOutlet weak var degreeLabel: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var backgroundTheme: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundTheme.image = UIImage(imageLiteralResourceName:"lightBG")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setupUI()
    }
    
    func setupUI() {
        pkLabel.textColor = Theme.currentTheme.labelColor
        degreeLabel.textColor = Theme.currentTheme.labelColor
        icon.tintColor = Theme.currentTheme.labelColor
        backgroundTheme.image = Theme.currentTheme.bg
    }
    
//    @IBAction func didChange(_ sender: UISwitch) {
//        if sender.isOn {
//            Theme.currentTheme = LightTheme()
//                setupUI()
//        } else {
//            Theme.currentTheme = DarkTheme()
//                setupUI()
//        }
//    
//    }
    
    
    

}
