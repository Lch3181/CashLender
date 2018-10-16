//
//  RegisterVC.swift
//  CashLender
//
//  Created by Mitchell Lam on 9/27/18.
//  Copyright © 2018 Mitchell Lam. All rights reserved.
//

import Alamofire
import UIKit

class RegisterVC: UIViewController {
    
    //Defined a constant that holds the URL for our web service
    let URL_USER_REGISTER = "http://c41ecaa6.ngrok.io/web/v1/Register.php"

    @IBOutlet weak var UserFirstNameTextbox: UITextField!
    @IBOutlet weak var UserLastNameTextbox: UITextField!
    @IBOutlet weak var UserEmailAddressTextbox: UITextField!
    @IBOutlet weak var UserPhoneTextbox: UITextField!
    @IBOutlet weak var UserNameTextbox: UITextField!
    @IBOutlet weak var UserPasswordTextbox: UITextField!
    @IBOutlet weak var UserRepeatPasswordTextbox: UITextField!
    
    
    @IBOutlet weak var labelMessage: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
        
    //creating parameters for the post request
    let parameters: Parameters=[
        "username":UserNameTextbox.text!,
        "password":UserPasswordTextbox.text!,
        "name":UserFirstNameTextbox.text! + " " + UserLastNameTextbox.text!,
        "email":UserEmailAddressTextbox.text!,
        "phone":UserPhoneTextbox.text!
    ]
        
        //Sending http post request
        Alamofire.request(URL_USER_REGISTER, method: .post, parameters: parameters).responseJSON
            {
                response in
                //printing response
                print(response)
                
                //getting the json value from the server
                if let result = response.result.value {
                    
                    //converting it as NSDictionary
                    let jsonData = result as! NSDictionary
                    
                    //displaying the message in label
                    self.labelMessage.text = jsonData.value(forKey: "message") as! String?
                }
        }
    }
    

    

    
    @IBAction func CancelButton(_ sender: Any) {
        print("Cancel button tapped")
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func SignInButton(_ sender: Any) {
        print("Sign in button tapped")
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
}
