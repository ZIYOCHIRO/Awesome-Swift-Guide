//: A UIKit based Playground for presenting user interface
// Attention: when create the new playground, choose the single view
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    let cardView = UIView()
    let videoImageView = UIImageView()
    let titleLabel = UILabel()
    let watchButton = UIButton()
    let animationButton = UIButton()
    
    var cardViewBottomConstraint: NSLayoutConstraint!
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .black
        self.view = view
        setUpCardView()
    }
    
    func setUpCardView() {
        view.addSubview(cardView)
        cardView.backgroundColor = .white
        cardView.layer.cornerRadius = 12
        
        
        setUpCardViewConstraints()
        setUpVideoImageView()
    }
    
    func setUpVideoImageView() {
        cardView.addSubview(videoImageView)
        videoImageView.layer.cornerRadius = 8
        videoImageView.layer.masksToBounds = true
        videoImageView.image = UIImage(named: "bgImage.jpg")
        
        setUpImageViewConstraints()
    }
    
    // MARK: Constraints
    func setUpCardViewConstraints() {
        // set using autolayout to false, because we set them manually
        cardView.translatesAutoresizingMaskIntoConstraints = false
        cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        cardView.heightAnchor.constraint(equalToConstant: 360).isActive = true
        
        cardViewBottomConstraint = cardView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10)
        cardViewBottomConstraint.isActive = true
        
    }
    func setUpImageViewConstraints() {
        videoImageView.translatesAutoresizingMaskIntoConstraints = false
        videoImageView.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 30).isActive = true
        videoImageView.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -30).isActive = true
        //keep aspect ratio
        videoImageView.heightAnchor.constraint(equalTo: videoImageView.widthAnchor, multiplier: 9.0/16.0).isActive = true
        videoImageView.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 50).isActive = true
    }
}

let vc = MyViewController()
vc.preferredContentSize = CGSize(width: 375, height: 812) // iphone X
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
