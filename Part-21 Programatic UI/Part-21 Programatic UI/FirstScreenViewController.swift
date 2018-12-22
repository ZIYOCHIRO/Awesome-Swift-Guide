//
//  FirstScreenViewController.swift
//  Part-21 Programatic UI
//
//  Created by 10.12 on 2018/12/22.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {

    let nextButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setUpNextButton()
    }
    
    func setUpNextButton() {
        view.addSubview(nextButton)
        nextButton.backgroundColor = .white
        nextButton.setTitle("Next", for: .normal)
        nextButton.setTitleColor(.blue, for: .normal)
        
        // add target
        nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        setUpNextButtonConstraints()
    }
    
    
    // tranistion to next screen
    @objc func nextButtonTapped() {
        let nextScreen = SecondScreenViewController()
        nextScreen.title = "Second Screen" // set the title
        navigationController?.pushViewController(nextScreen, animated: true)
        
    }
    
    func setUpNextButtonConstraints() {
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        nextButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        nextButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
    }
    
    
    
 

}
