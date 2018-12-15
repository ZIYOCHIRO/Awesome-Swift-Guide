//
//  ViewController.swift
//  Part-15 Concurrency
//
//  Created by 10.12 on 2018/12/15.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var calculatePrimeNumberButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculatePrimeNumber(_ sender: UIButton) {
        
        // if the following number is large enough, while it's still calculating, this operation will lock the User interface, you can't pick a date while it's calculate
        for number in 0...10000 {
            let isPrimeNubmer = isPrime(number: number)
            print("\(number) is prime: \(isPrimeNubmer)")
        }
    }
    
    func isPrime(number: Int) -> Bool {
        if number <= 1 {
            return false
        }
        if number <= 3 {
            return true
        }
        var i = 2
        while i * i <= number {
            if number % i == 0 {
                return false
            }
            i += 2
        }
        return true
    }
    
    
    
}







