//
//  SettingThemeVC.swift
//  autoLayoutDemo
//
//  Created by Supanut Laddayam on 12/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class SettingThemeVC: UIViewController {

    @IBOutlet weak var switchView: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    func setUI() {
        view.backgroundColor = Theme.currentTheme.labelColor
    }
    
    @IBAction func didChange(_ sender: UISwitch) {
        if sender.isOn {
            Theme.currentTheme = LightTheme()
        } else {
            Theme.currentTheme = DarkTheme()
        }
        setUI()
    }
    
}

