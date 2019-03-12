//
//  GeneralResquest.swift
//  validation
//
//  Created by imac on 8/03/19.
//  Copyright © 2019 imac. All rights reserved.
//

import Foundation

struct requestInfo {
    var url = String()
    var method = String()
    var parameters = [String:Any]()
}

class Requests {
    
    static func generalRequest (urlArg: String, paramsArg: Any, methodArg: String, responseData: @escaping (_ data: [Dictionary<String, Any>]) -> ()) {
        
        guard let url = URL(string: urlArg) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = methodArg
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        guard let httpBody = try? JSONSerialization.data(withJSONObject: paramsArg, options: []) else { return }
        request.httpBody = httpBody
        let session = URLSession.shared
        
        session.dataTask(with: request){ (data, response, error) in
            
            do{
                if let httpResponse = response as? HTTPURLResponse {
                    if httpResponse.statusCode >= 200 && httpResponse.statusCode < 400 {
                        print("muy bien, el status de la respuesta es: " + String(httpResponse.statusCode))
                        //respuesta exitosa del server
                    } else {
                        //respuesta no exitosa
                        print("qué mal amigo, server responde con: " + String(httpResponse.statusCode))
                    }
                }
                if let data = data {
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: []) as? [Dictionary<String,Any>]
                        responseData(json!)
                        
                    } catch {
                        responseData([["error":"no data"]])
                    }
                }
                if error != nil {
                    print("lo de abajo es el error")
                    print(error)
                }
            }
            }.resume()
    }
    
}
