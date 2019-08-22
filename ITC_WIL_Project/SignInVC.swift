//
//  ViewController.swift
//  ITC_WIL_Project
//
//  Created by Joshua Mac Guinness on 9/8/19.
//  Copyright © 2019 Joshua Mac Guinness. All rights reserved.
//

import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class SignInVC: UIViewController {

    var db: Firestore!

    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
//    @IBAction func onSignInTapped(_ sender: Any) {
//
////        Auth.auth().signIn(withEmail: emailTF.text!, password: passwordTF.text!) { (user, error) in
////            if error == nil{
////                self.performSegue(withIdentifier: "signedIn", sender: self)
////            }
////            else{
////                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
////                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
////
////                alertController.addAction(defaultAction)
////                self.present(alertController, animated: true, completion: nil)
////            }
////        }
//
//
//        Auth.auth().signIn(withEmail: emailTF.text!, password: passwordTF.text!) { (user, error) in
//            if error == nil{
//                self.performSegue(withIdentifier: "signedIn", sender: self)
//            }
//            else{
//                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
//                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//
//                alertController.addAction(defaultAction)
//                self.present(alertController, animated: true, completion: nil)
//            }
//        }
//
//    }
    
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        
        Auth.auth().signIn(withEmail: emailTF.text!, password: passwordTF.text!) { (user, error) in
            if error == nil{
                self.performSegue(withIdentifier: "signedIn", sender: self)
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
        
    }
    
    
    
}

