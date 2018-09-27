//
//  RegisterVC.swift
//  CashLender
//
//  Created by Mitchell Lam on 9/27/18.
//  Copyright © 2018 Mitchell Lam. All rights reserved.
//

import UIKit

class RegisterVC: UIViewController {
    
    @IBOutlet weak var UserFirstNameTextbox: UITextField!
    
    @IBOutlet weak var UserLastNameTextbox: UITextField!
    
    @IBOutlet weak var UserEmailAddressTextbox: UITextField!
    
    @IBOutlet weak var UserPasswordTextbox: UITextField!
    
    @IBOutlet weak var UserRepeatPasswordTextbox: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
        print("Sign up button tapped")
    }
    
    @IBAction func CancelButton(_ sender: Any) {
        print("Cancel button tapped")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func SignInButton(_ sender: Any) {
        print("Sign in button tapped")
    }
    
    
    
}
