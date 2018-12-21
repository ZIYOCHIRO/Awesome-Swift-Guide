//
//  NameTextField.swift
//  Part-16 UserDefault
//
//  Created by 10.12 on 2018/12/21.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class NameTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpTextField()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        setUpTextField()
    }
    
    private func setUpTextField() {
        tintColor = Colors.darkGrey
        textColor = Colors.darkGrey
        backgroundColor = UIColor.white
    }
    
    func updateStyle(isDarkMode: Bool) {
        let mainColor = isDarkMode ? UIColor.white : Colors.darkGrey
        keyboardAppearance = isDarkMode ? UIKeyboardAppearance.dark : .light
        
        UIView.animate(withDuration: 0.4) {
            self.tintColor = mainColor
            self.textColor = mainColor
            self.backgroundColor = isDarkMode ? Colors.darkGrey : .white
        }
    }
    
        
}
