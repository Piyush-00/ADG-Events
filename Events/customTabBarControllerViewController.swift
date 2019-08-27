//
//  customTabBarControllerViewController.swift
//  Events
//
//  Created by Devang Patel on 26/08/19.
//  Copyright © 2019 ADG-VIT. All rights reserved.
//


// https://github.com/Ramotion/animated-tab-bar/issues/191

import UIKit

class customTabBarControllerViewController: UITabBarController, UITabBarControllerDelegate {

     var tabBarIteam = UITabBarItem()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
    
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        let selectedImagetimeline = UIImage(named: "Dtimeline")?.withRenderingMode(.alwaysOriginal)
        let DeSelectedImagetimeline = UIImage(named: "timeline")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[0])!
        tabBarIteam.image = DeSelectedImagetimeline
        tabBarIteam.selectedImage = selectedImagetimeline
        
        let selectedImageevent =  UIImage(named: "Devent")?.withRenderingMode(.alwaysOriginal)
        let deselectedImageevent = UIImage(named: "event")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[1])!
        tabBarIteam.image = deselectedImageevent
        tabBarIteam.selectedImage =  selectedImageevent
        
        let selectedImageADG =  UIImage(named: "ADGTab")?.withRenderingMode(.alwaysOriginal)
        let deselectedImageADG = UIImage(named: "ADGTab")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[2])!
        tabBarIteam.image = deselectedImageADG
        tabBarIteam.selectedImage = selectedImageADG
        
        
        let selectedImageProfile =  UIImage(named: "Dprofile")?.withRenderingMode(.alwaysOriginal)
        let deselectedImageProfile = UIImage(named: "profile")?.withRenderingMode(.alwaysOriginal)
        tabBarIteam = (self.tabBar.items?[3])!
        tabBarIteam.image = deselectedImageProfile
        tabBarIteam.selectedImage = selectedImageProfile
        
        
        
        let numberOfItems = CGFloat(tabBar.items!.count)
        let tabBarItemSize = CGSize(width: tabBar.frame.width / numberOfItems, height: tabBar.frame.height-1)
        
        
        tabBar.selectionIndicatorImage = UIImage.imageWithColor(color: #colorLiteral(red: 0.8862745098, green: 0.4117647059, blue: 0.4117647059, alpha: 1) , size: tabBarItemSize)
        
//        // remove default border
//        tabBar.frame.size.width = self.view.frame.width + 4
//        tabBar.frame.origin.x = -2
        
        // initaial tab bar index
        self.selectedIndex = 0
        
        
        for tabBarItem in tabBar.items! {
            tabBarItem.title = ""
            tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
        }
    }
    
}


extension UIImage {
    class func imageWithColor(color: UIColor, size: CGSize) -> UIImage {
        let rect: CGRect = CGRect(x: 0, y: 0, width: size.width, height: size.height)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        return image
    }
}
