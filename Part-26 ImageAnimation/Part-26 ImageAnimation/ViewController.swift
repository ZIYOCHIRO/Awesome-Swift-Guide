//
//  ViewController.swift
//  Part-26 ImageAnimation
//
//  Created by 10.12 on 2018/12/26.
//  Copyright © 2018 Rui. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heartImageView: UIImageView!
    
    @IBOutlet weak var ryuImageView: UIImageView!
    
    var heartImages: [UIImage] = []
    var ryuImages: [UIImage] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heartImages = createImageArray(total: 24, imagePrefix: "heart")
        ryuImages = createImageArray(total: 7, imagePrefix: "ryu")
    }
    
    func createImageArray(total: Int, imagePrefix: String) -> [UIImage] {
        var imageArray: [UIImage] = []
        for imageCount in 0..<total {
            let imageName = "\(imagePrefix)-\(imageCount).png"
            let image = UIImage(named: imageName)!
            imageArray.append(image)
        }
        return imageArray
    }
    
    func animate(imageView: UIImageView, image:[UIImage]) {
        imageView.animationImages = image
        imageView.animationDuration = 1.0
        imageView.animationRepeatCount = 1 // the animation will only repeat 1 time
        imageView.startAnimating()
        
    }

    @IBAction func likeButtonTapped(_ sender: UIButton) {
        animate(imageView: heartImageView, image: heartImages)
    }
    
    @IBAction func shoryukenButtonTapped(_ sender: UIButton) {
        animate(imageView: ryuImageView, image: ryuImages)
    }
    
}

