//
//  ViewController.swift
//  Part-27 ActionSheet
//
//  Created by 10.12 on 2018/12/26.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayImageView: UIImageView!
    @IBOutlet weak var nightImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        addGesture()
    }

    func addGesture() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.showActionSheet))
        view.addGestureRecognizer(tap)
    }

    @objc func showActionSheet() {

        // 1. create the action sheet
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

        // 2. create action sheet action: cancel, day, night
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let day = UIAlertAction(title: "Day", style: .default) { action in
            self.changeDayTime(isDay: true)
        }
        let night = UIAlertAction(title: "Night", style: .default) { action in
            self.changeDayTime(isDay: false)
        }
        // 3. add those action to action sheet
        actionSheet.addAction(cancel)
        actionSheet.addAction(day)
        actionSheet.addAction(night)

        // 4. show action sheet
        present(actionSheet, animated: true, completion: nil)
    }


    func changeDayTime(isDay: Bool) {
        UIView.animate(withDuration: 0.4) {
            self.dayImageView.alpha = isDay ? 1 : 0
            self.nightImageView.alpha = isDay ? 0 : 1
        }
    }



}




