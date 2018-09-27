//
//  SignInVC.swift
//  CashLender
//
//  Created by Mitchell Lam on 9/27/18.
//  Copyright © 2018 Mitchell Lam. All rights reserved.
//

import UIKit

class SignInVC: UIViewController {

    @IBOutlet weak var UserNameTextbox: UITextField!
    
    @IBOutlet weak var UserPasswordTextbox: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func SignInButton(_ sender: Any) {
        print("Sign in button tapped")
    }
    
    @IBAction func RegisterButton(_ sender: Any) {
        print("Register button tapped")
    }
    
    @IBAction func GuessLoginButton(_ sender: Any) {
        print("Guess login button tapped")
    }
    
}
