//
//  SettingPageVC.swift
//  ITC_WIL_Project
//
//  Created by Joshua Mac Guinness on 22/8/19.
//  Copyright © 2019 Joshua Mac Guinness. All rights reserved.
//

import UIKit

class SettingPageVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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

    @IBAction func onAddNewUser(_ sender: Any) {
        self.performSegue(withIdentifier: "showNewUser", sender: self)
    }
}
