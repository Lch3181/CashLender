//
//  MainVC.swift
//  CashLender
//
//  Created by Mitchell Lam on 9/26/18.
//  Copyright © 2018 Mitchell Lam. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(showProfile), name: NSNotification.Name("ShowProfile"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showFriendList), name: NSNotification.Name("ShowFriendList"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showSettings), name: NSNotification.Name("ShowSettings"), object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(showSignIn), name: NSNotification.Name("ShowSignIn"), object: nil)
    }
    
    @objc func showProfile(){
        performSegue(withIdentifier: "ShowProfile", sender: nil)
    }
    
    @objc func showFriendList(){
        performSegue(withIdentifier: "ShowFriendList", sender: nil)
    }
    
    @objc func showSettings(){
        performSegue(withIdentifier: "ShowSettings", sender: nil)
    }
    
    @objc func showSignIn(){
        performSegue(withIdentifier: "ShowSignIn", sender: nil)

    }
    
    

    @IBAction func onMoreTapped(){
        print("Toggle Side Menu")
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
    }

}


