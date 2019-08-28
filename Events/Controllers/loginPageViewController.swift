//
//  loginPageViewController.swift
//  Events
//
//  Created by Devang Patel on 28/08/19.
//  Copyright © 2019 ADG-VIT. All rights reserved.
//

import UIKit

class loginPageViewController: UIViewController, UITextFieldDelegate {

    
    //MARK:- Outlets
    
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var regNoTextField: UITextField!
    @IBOutlet weak var stackTop: NSLayoutConstraint!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TextField Delegatges
        passTextField.delegate = self
        regNoTextField.delegate = self
        
        //calling notification center
        notificationCenter()
    }
    
    
    //MARK:- Notification Center setup
    
    func notificationCenter() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    //MARK:- TextField Delegate Method
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        return true
        
    }
    

    //MARK:- Keyboard will show/hide notificatin calling functions
    
    @objc func keyBoardWillShow(notification: Notification){
        
            self.stackTop.constant = 5
            UIView.animate(withDuration: 0.5, animations: {
                self.view.layoutIfNeeded()
            })
    }
    
    @objc func keyBoardWillHide(notification: Notification){
        
        self.stackTop.constant = 100.0
        UIView.animate(withDuration: 0.5, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
}
