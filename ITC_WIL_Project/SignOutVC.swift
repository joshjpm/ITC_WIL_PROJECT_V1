//
//  SignOutVC.swift
//  ITC_WIL_Project
//
//  Created by Joshua Mac Guinness on 9/8/19.
//  Copyright © 2019 Joshua Mac Guinness. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class SignOutVC: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    @IBAction func onSignOutTapped(_ sender: Any) {
        do {
            try Auth.auth().signOut()
        }
        catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let initial = storyboard.instantiateInitialViewController()
        UIApplication.shared.keyWindow?.rootViewController = initial
    }
    
    @IBAction func onDeviceBtnClick(_ sender: Any) {
        self.performSegue(withIdentifier: "showDevices", sender: self)
    }
    
    @IBAction func onTcButtonClick(_ sender: Any) {
        self.performSegue(withIdentifier: "showTC", sender: self)
    }
    
    @IBAction func onSettingsBtnClick(_ sender: Any) {
        self.performSegue(withIdentifier: "showSettings", sender: self)
    }
    
    
    
}
