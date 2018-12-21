//
//  ViewController.swift
//  Part17-ConstrainsInCode
//
//  Created by 10.12 on 2018/12/21.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let backgroundImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func setBackground() {
        // When you working with constraints programmatically
        // 1. add that view to parent view
        view.addSubview(backgroundImageView)
        // 2. let Xcode knows that you want to use Autolayout
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        // safe area: always has spaces to bottom or top or ...
        // topAnchor: fill up entire phone
        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        // set image
        backgroundImageView.image = UIImage(named: "background")
        // set the background imageView at the bottom of the view
        view.sendSubviewToBack(backgroundImageView)
        
    }


}














