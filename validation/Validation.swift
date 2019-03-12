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
    var isValidCreditCard: Bool {
        let creditCard = "^([0-9]).{16,}$"
        let creditCardTest = NSPredicate(format: "SELF MATCHES %@", creditCard)
        return creditCardTest.evaluate(with: self)
    }
    var isNotEmptyString_4: Bool {
        let notEmptyString = "^.{4,}$"
        let notEmptyStringTest = NSPredicate(format: "SELF MATCHES %@", notEmptyString)
        return notEmptyStringTest.evaluate(with: self)
    }
    var isNotEmptyString_2: Bool {
        let notEmptyString = "^.{2,}$"
        let notEmptyStringTest = NSPredicate(format: "SELF MATCHES %@", notEmptyString)
        return notEmptyStringTest.evaluate(with: self)
    }
    var isValidZIPCode: Bool {
        let validZIPCode = "[0-9]{4,5}"
        let validZIPCodeTest = NSPredicate(format: "SELF MATCHES %@", validZIPCode)
        return validZIPCodeTest.evaluate(with: self)
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
