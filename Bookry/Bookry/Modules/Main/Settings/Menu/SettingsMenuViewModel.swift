//
//  SettingsViewModel.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI

protocol SettingsMenuViewModelable: ObservableObject {
    var navDelegate: SettingsMenuNavDelegate? { get set }
    func didTapHome()
    func didTapThemes()
}

protocol SettingsMenuNavDelegate {
    func onThemesTapped()
    func onHomeTapped()
}

class SettingsMenuViewModel: BaseViewModel, SettingsMenuViewModelable {
    
    var navDelegate: (any SettingsMenuNavDelegate)?
    
    func didTapHome() {
        navDelegate?.onHomeTapped()
    }
    
    func didTapThemes() {
        print("didTapThemes called")
        navDelegate?.onThemesTapped()
    }
}
