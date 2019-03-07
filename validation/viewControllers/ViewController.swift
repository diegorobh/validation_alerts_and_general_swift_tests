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
            Alerts.alertOneButtonCustomAction(title: "Error", message: "Validation Fails", titleBtn: "Ok", viewController: self) {(true) in
            self.test()
            self.performSegue(withIdentifier: "segueToSecond", sender: self)
            }
        }
        
    }
    
    @IBAction func oneCustomTwoBtns(_ sender: Any) {
        Alerts.alertOneButtonCustomActionAndCancel(title: "1 custom, 2 buttons", message: "One custom action and an extra button for dismiss alert", titleBtn1: "btn1 custom name", titleBtn2: "btn2 custom name", viewController: self) { (true) in
            self.test1()
        }
    }
    
    @IBAction func twoCustomActions(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.classForCoder.description())
    }

    public func test(){
        print("print form test function")
    }
    
    public func test1(){
        print("print form test function 1")
    }
    
    public func test2(){
        print("print form test function 2")
    }

    
}

