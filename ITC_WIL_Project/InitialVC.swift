//
//  InitialVC.swift
//  ITC_WIL_Project
//
//  Created by Joshua Mac Guinness on 13/8/19.
//  Copyright © 2019 Joshua Mac Guinness. All rights reserved.
//

import UIKit
import Firebase


class InitialVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signInButtonPress(_ sender: Any) {
        self.performSegue(withIdentifier: "moveToSignIn", sender: nil)
    }
    
    @IBAction func singUpButtonPress(_ sender: Any) {
        self.performSegue(withIdentifier: "moveToSignUp", sender: nil)
    }
    
    
    override func viewDidAppear(_ animated: Bool){
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil {
            self.performSegue(withIdentifier: "homeScreenSegue", sender: nil)
        }
    }
    
}
