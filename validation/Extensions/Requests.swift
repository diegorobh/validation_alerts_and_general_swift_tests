//
//  Requests.swift
//  validation
//
//  Created by imac on 7/03/19.
//  Copyright © 2019 imac. All rights reserved.
//

import UIKit

class Requests {
//    func getRequest(){
//        //BEGGIN GET REQUEST
//        let parameters = [
//            "email": emailTextField.text,
//            "password":passwordTextField.text
//        ]
//
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/usersss") else { return }
//        var request = URLRequest(url: url)
//        request.httpMethod = "GET"
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else { return }
//        request.httpBody = httpBody
//
//        let session = URLSession.shared
//        session.dataTask(with: request) { (data, response, error) in
//            if let httpResponse = response as? HTTPURLResponse {
//                print(httpResponse.statusCode)
//            }
//
//            if let data = data {
//                do {
//                    let json = try JSONSerialization.jsonObject(with: data, options: [])
//                    print(json)
//                    let storyBoard = UIStoryboard(name: "Main", bundle:nil)
//                    let memberDetailsViewController = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//                    self.navigationController?.pushViewController(memberDetailsViewController, animated: true)
//                } catch {
//                    print(error)
//                }
//            }
//
//            }.resume()
//        //END GET REQUEST
//    }
//
//
//        let parameters = [
//            "email": user.email,
//            "phone": user.phone,
//            "password":user.password,
//            "firstName":firstName.text!,
//            "lastName":lastName.text!,
//            "addressLine_1":addressLine1.text!,
//            "addressLine_2":addressLine2.text!
//        ]
//
//        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else { return }
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
//        guard let httpBody = try? JSONSerialization.data(withJSONObject: parameters, options: []) else { return }
//        request.httpBody = httpBody
//
//        let session = URLSession.shared
//        session.dataTask(with: request) { (data, response, error) in
//            if let response = response {
//                print(response)
//            }
//
//            if let data = data {
//                do {
//                    let json = try JSONSerialization.jsonObject(with: data, options: [])
//                    print(json)
//
//                    //                        let storyBoard = UIStoryboard(name: "Main", bundle:nil)
//                    //                        let memberDetailsViewController = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
//                    //                        self.navigationController?.pushViewController(memberDetailsViewController, animated: true)
//
//                } catch {
//                    print(error)
//                }
//            }
//
//            }.resume()
        //END POST REQUEST

}
