//
//  Alerts.swift
//  validation
//
//  Created by imac on 6/03/19.
//  Copyright © 2019 imac. All rights reserved.
//

import UIKit

public class Alerts {
    
    static func alertOneButton(title: String, message: String, titleBtn: String, viewController: UIViewController, hasAction: Bool, actionArg: Selector) {
        let alert = UIAlertController(title: title, message: message, preferredStyle:UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: titleBtn, style: UIAlertAction.Style.default, handler: {(action) in
            alert.dismiss(animated: true, completion: nil)
            if hasAction {
                actionArg
            }
        }))
        viewController.present(alert, animated: true, completion: nil)
    }
    
}
