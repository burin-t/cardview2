//
//  ViewController.swift
//  cardview2
//
//  Created by Burin Techama on 4/6/2565 BE.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cardview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        cardview.layer.cornerRadius = 15
        cardview.layer.shadowColor = UIColor.black.cgColor
        cardview.layer.shadowRadius = 10
        cardview.layer.shadowOpacity = 0.1
        
        let gesture = UILongPressGestureRecognizer(target: self, action: #selector(onTapView))
        gesture.minimumPressDuration = 0
        cardview.addGestureRecognizer(gesture)
    }
    
    @objc func onTapView(gesture: UITapGestureRecognizer) {
        switch gesture.state {
        case .began:
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1) {
                self.cardview.transform = CGAffineTransform(scaleX: 0.96, y: 0.96)
            }
//            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
//                self.cardview.transform = CGAffineTransform(scaleX: 0.96, y: 0.96)
//            }
//        case .changed:
//            print("very likely, just that the finger wiggled around while the user was holding down the button. generally, just ignore this")
//        case .possible, .recognized:
//            print("in almost all cases, simply ignore these two, unless you are creating very unusual custom subclasses")
//        case .cancelled, .failed, .ended:
//            cardview.transform = CGAffineTransform.identity
        default:
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1) {
                self.cardview.transform = CGAffineTransform.identity
            }
//            UIView.animate(withDuration: 0.5, delay: 0, options: .curveEaseOut) {
//                self.cardview.transform = CGAffineTransform.identity
//            }
        }
        
        
    }


}

