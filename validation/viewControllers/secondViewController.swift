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
            
            let parameters = [
 
                "email": email.text,
                "password": password.text
            ]
            guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
            var request = URLRequest(url: url)
            request.httpMethod = "POST"
            request.addValue("application/json", forHTTPHeaderField: "Content-Type")
            
            guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else { return }
            request.httpBody = httpBody
            let session = URLSession.shared
            
            session.dataTask(with: request) { (data, response, error) in
                do{
                    if let httpResponse = response as? HTTPURLResponse {
                        if httpResponse.statusCode >= 200 && httpResponse.statusCode < 400 {
                            print("muy bien, el status de la respuesta es: " + String(httpResponse.statusCode))
                            DispatchQueue.main.async {
                                self.responseTextContainer.text = "success"
                            }
                        }
                        else{
                            self.responseTextContainer.text = "fail"
                            print("qué mal amigo, server responde con: " + String(httpResponse.statusCode))
                        }
                    }
                    if let data = data {
                        do {
                            let json = try JSONSerialization.jsonObject(with: data, options: [])
                            self.responseTextContainer.text = json as? String
                        } catch {
                            print(error)
                        }
                    }
                }
            }.resume()
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
