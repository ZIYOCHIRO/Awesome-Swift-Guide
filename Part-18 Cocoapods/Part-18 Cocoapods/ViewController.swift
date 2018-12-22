//
//  ViewController.swift
//  Part-18 Cocoapods
//
//  Created by 10.12 on 2018/12/22.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit
import SVProgressHUD

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        SVProgressHUD.setDefaultMaskType(.black)
        SVProgressHUD.show(withStatus: "Wait....")
    }


}

