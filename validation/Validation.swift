//
//  Validation.swift
//  validation
//
//  Created by imac on 6/03/19.
//  Copyright © 2019 imac. All rights reserved.
//

import UIKit

extension String {
    var isValidPhoneNumber: Bool {
        let phoneNumberChars = "^([0-9]).{10,}$"
        let phoneNumberTest = NSPredicate(format: "SELF MATCHES %@", phoneNumberChars)
        return phoneNumberTest.evaluate(with:self)
    }
    var isValidPassword: Bool {
        let passwordChars = "^(?=.*[!@#$&*]).{8,}$"
        let passwordTest = NSPredicate(format: "SELF MATCHES %@", passwordChars)
        return passwordTest.evaluate(with: self)
    }
    var isValidEmail: Bool {
        let emailChars = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        let emailTest = NSPredicate(format: "SELF MATCHES %@", emailChars)
        return emailTest.evaluate(with: self)
    }
}

/*validation options for pass
 ^(?=.*[A-Z].*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9])(?=.*[a-z].*[a-z].*[a-z]).{8}$
 Regex Explanation : -
 ^                         Start anchor
 (?=.*[A-Z].*[A-Z])        Ensure string has two uppercase letters.
 (?=.*[!@#$&*])            Ensure string has one special case letter.
 (?=.*[0-9].*[0-9])        Ensure string has two digits.
 (?=.*[a-z].*[a-z].*[a-z]) Ensure string has three lowercase letters.
 .{8}                      Ensure string is of length 8.
 $                         End anchor.
 .{8,}                      Mínimo 8
 
 mínimo 8 carácteres y 1 caracter especial
 
 */
