//
//  MyButton.swift
//  Part-22 Animate the constraints
//
//  Created by 10.12 on 2018/12/22.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class MyButton: UIButton {

    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupButton() {
        backgroundColor = UIColor(red: 252/255, green: 109/255, blue: 25/255, alpha: 1)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        setTitle("START", for: .normal)
        setTitleColor(.white, for: .normal)
    }

}
