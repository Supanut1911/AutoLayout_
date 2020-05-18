//
//  saveVC.swift
//  autoLayoutDemo
//
//  Created by Supanut Laddayam on 18/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class saveVC: UIViewController {
    
    var isDarkMode = false
    let defaults = UserDefaults.standard
    
    struct Keys {
        static let preferDarkMode = "perfersDarkMode"
        static let petName = "petName"
    }
    
    @IBOutlet weak var styleSegmentContorl: UISegmentedControl!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameTextField: NameTextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImageView()
        checkForStylePreference()
        checkForSaveName()
    }
    
    func setupImageView() {
        imageView.layer.cornerRadius = imageView.frame.size.height / 2
        imageView.clipsToBounds = true
    }
    
    func updateStyle() {
        UIView.animate(withDuration: 0.4) {
            self.view.backgroundColor = self.isDarkMode ? #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1) : .white
            self.nameTextField.updateStyle(isDarkMode: self.isDarkMode)
        }
    }
    
    @IBAction func didChangeStyleSegmentControl(_ sender: UISegmentedControl) {
        isDarkMode = sender.selectedSegmentIndex == 1
        saveStylePreference()
        updateStyle()
    }
    
    @IBAction func saveDidTap(_ sender: UIButton) {
        saveName()
    }
    
    func saveStylePreference() {
        defaults.set(isDarkMode, forKey: Keys.preferDarkMode)
    }
    
    func checkForStylePreference () {
        let prefersDarkMode = defaults.bool(forKey: Keys.preferDarkMode)
        
        if prefersDarkMode {
            isDarkMode = true
            updateStyle()
            styleSegmentContorl.selectedSegmentIndex = 1
        }
    }
    
    func saveName() {
        defaults.set(nameTextField.text!, forKey: Keys.petName)
        print("save success")
    }
    
    func checkForSaveName(){
        let name = defaults.value(forKey: Keys.petName) as? String ?? ""
        nameTextField.text = name
    }
    

}
