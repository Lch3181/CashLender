//
//  SideMenuVCTableViewController.swift
//  CashLender
//
//  Created by Mitchell Lam on 9/26/18.
//  Copyright © 2018 Mitchell Lam. All rights reserved.
//

import UIKit

class SideMenuVC: UITableViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        
        NotificationCenter.default.post(name: NSNotification.Name("ToggleSideMenu"), object: nil)
        
        switch indexPath.row{
        case 0: NotificationCenter.default.post(name: NSNotification.Name("ShowProfile"), object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("ShowFriendList"), object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("ShowSettings"), object: nil)
        case 3: NotificationCenter.default.post(name: NSNotification.Name("ShowSignIn"), object: nil)
        default: break
        }
    }

}
