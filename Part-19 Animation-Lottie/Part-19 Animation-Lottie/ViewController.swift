//
//  ViewController.swift
//  Part-19 Animation-Lottie
//
//  Created by 10.12 on 2018/12/22.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    
    @IBOutlet private var animationView: LOTAnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimation()
    }
    
    func startAnimation() {
        animationView.setAnimation(named: "ball")
        // if add the following code, the animation will not stop
        animationView.loopAnimation = true
        animationView.play()

    }


}

