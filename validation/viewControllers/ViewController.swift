//
//  ViewController.swift
//  validation
//
//  Created by imac on 6/03/19.
//  Copyright © 2019 imac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBAction func sendBtnAction(_ sender: Any) {
        
        if (email.text?.isValidEmail)! && (password.text?.isValidPassword)! && (phone.text?.isValidPhoneNumber)! {
            print("valid form")
        } else {
            Alerts.alertOneButton(title: "Error", message: "Validation Fails", titleBtn: "Ok", viewController: self, hasAction: true, actionArg: #selector(self.test))
            print("invalid form")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc func test(){
        print("imprimió el test")
    }

    static func test1(){
        print("imprimió el test")
    }
    
    func validateEmail(text: String){
        print(text)
    }

}

