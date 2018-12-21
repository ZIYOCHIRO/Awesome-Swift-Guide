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
    @IBOutlet weak var nameTextField: NameTextField!
    
    var isDarkMode = false
    let defaults = UserDefaults.standard
    
    struct keys {
        static let preferDarkMode = "prefersDarkMode"
        static let petName = "petname"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPetImageView()
        checkForStylePreference()
        checkForSaveName()
    }
    
    func setupPetImageView() {
        petImageView.layer.cornerRadius = petImageView.frame.size.height / 2
        petImageView.clipsToBounds = true
    }
    
    func updateStyle() {
        UIView.animate(withDuration: 0.4) {
            self.view.backgroundColor = self.isDarkMode ? Colors.darkGrey : .white
            self.nameTextField.updateStyle(isDarkMode: self.isDarkMode)
            
        }
    }

    @IBAction func didChangeStyleSegmentedControl(_ sender: UISegmentedControl) {
        isDarkMode = sender.selectedSegmentIndex == 1
        saveStylePreference()
        updateStyle()
    }
    
    // --- **** Attention ***** ---
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        saveName()
    }
    
    func saveStylePreference() {
        defaults.set(isDarkMode, forKey: keys.preferDarkMode)
    }
    func saveName() {
        defaults.set(NameTextField.text, forKey: keys.petName)
    }
    // -----**** Attention ***** ------
    func checkForStylePreference() {
        let preferDarkMode = defaults.bool(forKey: keys.preferDarkMode)
        
        if preferDarkMode {
            isDarkMode = true
            updateStyle()
            styleSegmentControl.selectedSegmentIndex = 1
        }
    }
    
    func checkForSaveName() {
        // if it has a value cast it to String, if it's nil then set it to ""(blank)
        let name = defaults.value(forKey: keys.petName) as? String ?? ""
        nameTextField.text = name
    }
    
}
















