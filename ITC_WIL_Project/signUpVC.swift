//
//  signUpVC.swift
//  ITC_WIL_Project
//
//  Created by Joshua Mac Guinness on 9/8/19.
//  Copyright © 2019 Joshua Mac Guinness. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class signUpVC: UIViewController {

    var db: Firestore!

    
    @IBOutlet weak var usernameTF: UITextField!
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBAction func onSignUpTapped(_ sender: Any) {
        
        
        let signUpManager = FirebaseAuthManager()
        if let email = emailTF.text, let password = passwordTF.text {
            signUpManager.createUser(email: email, password: password) {[weak self] (success) in
                guard let `self` = self else { return }
                var message: String = ""
                if (success) {
                    message = "User was sucessfully created."
                } else {
                    message = "There was an error."
                }
                let alertController = UIAlertController(title: nil, message: message, preferredStyle: .alert)
                alertController.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(alertController, animated: true)
                self.performSegue(withIdentifier: "homeScreenSegue", sender: self)

            }
        }
        
        
    }
    
    
    
}
