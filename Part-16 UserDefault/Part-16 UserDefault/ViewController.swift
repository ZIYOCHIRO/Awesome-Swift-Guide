//
//  ViewController.swift
//  Part-16 UserDefault
//
//  Created by 10.12 on 2018/12/21.
//  Copyright © 2018 Rui. All rights reserved.
//

/*
 
 The UserDefaults class provides convenience methods for accessing common types such as - floats, integers, Boolean values and URLs.(jsut small pieces of data.)
 it's just the plist in the library - security: can be accessed by other apps. So don't store user passwords, API keys
 2 properties: 1.it's not secure 2. don't save large amount of data
 */

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var styleSegmentControl: UISegmentedControl!
    @IBOutlet weak var petImageView: UIImageView!
    @IBOutlet weak var nameTextField: UITextField!
    
    var isDarkMode = false
    let defaults = UserDefaults.standard
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPetImageView()
    }
    
    func setupPetImageView() {
        petImageView.layer.cornerRadius = petImageView.frame.size.height / 2
        petImageView.clipsToBounds = true
    }
    
    func updateStyle() {
        UIView.animate(withDuration: 0.4) {
            self.view.backgroundColor = self.isDarkMode ? Colors.darkGrey : .white
            
        }
    }
    
    
    

    @IBAction func didChangeStyleSegmentedControl(_ sender: Any) {
    }
    
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
    }
    
}

