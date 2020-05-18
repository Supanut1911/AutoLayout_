//
//  NameTextField.swift
//  autoLayoutDemo
//
//  Created by Supanut Laddayam on 18/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class NameTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpTextField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setUpTextField()
    }
    
    private func setUpTextField() {
        tintColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        textColor = #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        backgroundColor = .white
    }
    
    func updateStyle(isDarkMode: Bool) {
        let mainColor = isDarkMode ? .white : #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1)
        keyboardAppearance = isDarkMode ? .dark : .light
        
        UIView.animate(withDuration: 0.4) {
            self.tintColor = mainColor
            self.textColor = mainColor
            self.backgroundColor = isDarkMode ? #colorLiteral(red: 0.3333333433, green: 0.3333333433, blue: 0.3333333433, alpha: 1) : .white
        }
    }
    
    
}
