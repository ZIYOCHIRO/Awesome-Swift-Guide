//
//  ViewController.swift
//  Part-24 Unwind Segues
//
//  Created by 10.12 on 2018/12/26.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var showPassedDataLabel: UILabel!
    
    var passedDataString = "Let's get started!"

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        showPassedDataLabel.text = passedDataString
    }

    @IBAction func unwindToOne(_ sender: UIStoryboardSegue) { }

}

