//
//  LoginViewModel.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import Foundation
import SwiftUI

protocol LoginViewModelable {
    var navDelegate: LoginViewModelNavDelegate? { get set }
    func didTapContinue()
}

protocol LoginViewModelNavDelegate: AnyObject {
    func onLogin()
}

class LoginViewModel: ObservableObject, LoginViewModelable {
    var navDelegate: (any LoginViewModelNavDelegate)?
    
    func didTapContinue() {
        navDelegate?.onLogin()
    }
}
