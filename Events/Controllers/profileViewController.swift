//
//  profileViewController.swift
//  Events
//
//  Created by Devang Patel on 26/08/19.
//  Copyright © 2019 ADG-VIT. All rights reserved.
//

import UIKit

class profileViewController: UIViewController {

    
    //MARK:- Outlets
    
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var regnumber: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Hide Status Bar
    override var prefersStatusBarHidden: Bool {
        return true
    }

    
}

//extension UIView {
//
//    // OUTPUT 1
//    func dropShadow(scale: Bool = true) {
//        layer.masksToBounds = false
//        layer.shadowColor = UIColor.black.cgColor
//        layer.shadowOpacity = 0.5
//        layer.shadowOffset = CGSize(width: -0.5, height: 0.5)
//        layer.shadowRadius = 0.5
//
//        layer.shadowPath = UIBezierPath(rect: bounds).cgPath
//        layer.shouldRasterize = true
//        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
//    }
//
//    // OUTPUT 2
//    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
//        layer.masksToBounds = false
//        layer.shadowColor = color.cgColor
//        layer.shadowOpacity = opacity
//        layer.shadowOffset = offSet
//        layer.shadowRadius = radius
//
//        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
//        layer.shouldRasterize = true
//        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
//    }
//}
