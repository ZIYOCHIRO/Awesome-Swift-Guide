//
//  FourthViewController.swift
//  Part-24 Unwind Segues
//
//  Created by 10.12 on 2018/12/26.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let desVC = segue.destination as! FirstViewController
        desVC.passedDataString = "I passed the data!"
    
    }
}
