//
//  LoginViewModel.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import Foundation
import SwiftUI

protocol LoginViewModelable {
    func changeBackgroundColor()
}

class LoginViewModel: ObservableObject, LoginViewModelable {
    @Published var backgroundColor: Color = Color.purple
    
    func changeBackgroundColor() {
        print("ChangeColorCalled")
    }
}
