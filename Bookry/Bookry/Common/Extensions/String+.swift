//
//  String+.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import Foundation

extension String {
    func isValidEmail() -> Bool {
        if isEmpty { return false }
        
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        
        return emailPredicate.evaluate(with: self)
    }
}
