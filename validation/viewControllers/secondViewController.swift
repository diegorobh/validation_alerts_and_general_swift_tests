//
//  secondViewController.swift
//  validation
//
//  Created by imac on 6/03/19.
//  Copyright © 2019 imac. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var responseTextContainer: UITextView!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var requestForPost = requestInfo()
    
    @IBAction func getBtn(_ sender: Any) {
        
        if (email.text?.isValidEmail)! && (password.text?.isValidPassword)! {
            requestForPost = requestInfo(url:"https://jsonplaceholder.typicode.com/users" , method: "GET", parameters: ["":""] as [String : Any])
            Requests.generalRequest(urlArg: requestForPost.url, paramsArg: requestForPost.parameters, methodArg: requestForPost.method){ data in
                print (data)
            }
        }
    }

    
    @IBAction func postBtn(_ sender: Any) {
        if (email.text?.isValidEmail)! && (password.text?.isValidPassword)! {
            let parameters = [
                "email": email.text,
                "password": password.text
            ]
            requestForPost = requestInfo(url:"https://jsonplaceholder.typicode.com/posts" , method: "POST", parameters: parameters as [String : Any])
            Requests.generalRequest(urlArg: requestForPost.url, paramsArg: requestForPost.parameters, methodArg: requestForPost.method){ data in
                print (data[0]["email"])
                print (data)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
