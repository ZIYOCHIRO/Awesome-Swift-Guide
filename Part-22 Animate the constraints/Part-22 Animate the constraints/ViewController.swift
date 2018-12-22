//
//  ViewController.swift
//  Part-22 Animate the constraints
//
//  Created by 10.12 on 2018/12/22.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageViewTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var animateButtonWidth: NSLayoutConstraint!
    
    @IBOutlet weak var animateButtonHeight: NSLayoutConstraint!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var startButton = MyButton()
    var startButtonCenterYConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpStartButtonConstraints()
    }
    
    func setUpStartButtonConstraints() {
        view.addSubview(startButton)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        startButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        startButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        startButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500).isActive = true
        startButtonCenterYConstraint = startButton.centerXAnchor.constraint(equalTo: view.leadingAnchor, constant: -300)
        startButtonCenterYConstraint.isActive = true
        
        
    }
    
    //* move the image up
    func animateImageView() {
        UIView.animate(withDuration: 0.4) {
            self.imageViewTopConstraint.constant = 10
        }
    }
    
    //* move the start button to the center
    func animateStartButtonCenter() {
        
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 4, options: .curveEaseOut, animations: {
            self.startButtonCenterYConstraint.constant = self.view.center.x
            self.view.layoutIfNeeded()
        }, completion: nil)
    }
    
    //*
    func shrinkAnimateButton() {
        UIView.animate(withDuration: 0.4) {
            self.animateButtonWidth.constant = 100
        }
        
    }

    @IBAction func animatedButton(_ sender: UIButton) {
        animateStartButtonCenter()
        shrinkAnimateButton()
        animateImageView()
        
    }
}

