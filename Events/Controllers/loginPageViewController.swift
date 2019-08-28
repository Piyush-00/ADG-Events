//
//  loginPageViewController.swift
//  Events
//
//  Created by Devang Patel on 28/08/19.
//  Copyright © 2019 ADG-VIT. All rights reserved.
//

import UIKit

class loginPageViewController: UIViewController {

    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var regNoTextField: UITextField!
    @IBOutlet weak var stackTop: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillShow(notification:)), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillHide(notification:)), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
